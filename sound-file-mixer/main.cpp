#include "src/RNBO_CoreObject.h"
#include "src/RNBO_DataRefList.h"
#include <iostream>
#include <RNBO.h>

#include <unistd.h>
#include <fstream>
#include <sstream>
#include <sndfile.hh>

using RNBO::CoreObject;
using RNBO::DataRefList;
using RNBO::DataRefType;
using RNBO::ExternalDataId;

int main(int argc, const char * argv[]) {
    CoreObject rnboObject;
    
    // Read in the dependencies.json file as a std::string
    std::ifstream t("export/dependencies.json");
    std::stringstream buffer;
    buffer << t.rdbuf();
    
    // Parse dependencies into a RNBO DataRefList
    DataRefList list(buffer.str());
    
    // Loop and load
    for (int i = 0; i < list.size(); i++) {
        // Get parsed info about this data reference
        std::string idstr = list.datarefIdAtIndex(i);
        DataRefType type = list.datarefTypeAtIndex(i);
        std::string location = list.datarefLocationAtIndex(i);
        
        // The type can be either URL or File
        if (type == DataRefType::File) {
            std::cout << "buffer id: " << idstr << "\n";
            std::cout << "file path: " << list.datarefLocationAtIndex(i) << "\n";
            
            // Add the export prefix to the path
            std::string filepath = "export/" + list.datarefLocationAtIndex(i);

            SndfileHandle sndfile(filepath);
            
            if (sndfile) {
                // Use the file handle to make a type
                RNBO::Float32AudioBuffer bufferType(sndfile.channels(), sndfile.samplerate());

                // Make space to store the file
                const uint32_t numItems = sndfile.frames() * sndfile.channels();
                float* buffer = new float[numItems];
                
                // Get the raw pointer to read into
                sf_count_t readSamples = sndfile.readf(buffer, sndfile.frames());
                
                // Give the memory to RNBO
                rnboObject.setExternalData(
                    idstr.c_str(),
                    reinterpret_cast<char *>(buffer),
                    readSamples * sizeof(float),
                    bufferType,
                    [buffer] (RNBO::ExternalDataId, char*) {
                        delete[] buffer; //release the memory
                    }
                );
                std::cout << "--- Success: Read " << readSamples << " samples" << "\n";
            } else {
                std::cout << "--- Failed" << "\n";
            }
        }
    }
    
    rnboObject.prepareToProcess(44100, 64);
    RNBO::SampleValue** inputs = nullptr;
    RNBO::SampleValue** outputs = new RNBO::SampleValue*[1];
    outputs[0] = new RNBO::SampleValue[64];
    
    for (int i = 0; i < 100; i++) {
        rnboObject.process(inputs, 0, outputs, 1, 64);
    }
    
    std::cout << "\nFirst 5 output samples: " << "\n";
    for (int i = 0; i < 5; i++) {
        std::cout << outputs[0][i] << "\n";
    } 
    
    delete [] outputs[0];
    delete [] outputs;
    
    return 0;
}
