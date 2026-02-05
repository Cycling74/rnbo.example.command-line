#include "src/RNBO_CoreObject.h"
#include "src/RNBO_DataRefList.h"
#include <iostream>
#include <RNBO.h>

#include <unistd.h>
#include <fstream>
#include <sstream>
#include <vector>
#include <algorithm>
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
    
    const int sampleRate = 44100;
    const int blockSize = 64;
    const int totalSamples = 44100; // 1 second of audio
    const int numBlocks = (totalSamples + blockSize - 1) / blockSize;

    rnboObject.prepareToProcess(sampleRate, blockSize);
    RNBO::SampleValue** inputs = nullptr;
    RNBO::SampleValue** outputs = new RNBO::SampleValue*[1];
    outputs[0] = new RNBO::SampleValue[blockSize];

    // Buffer to accumulate all output samples
    std::vector<float> outputBuffer(totalSamples);
    int samplesWritten = 0;

    for (int i = 0; i < numBlocks && samplesWritten < totalSamples; i++) {
        rnboObject.process(inputs, 0, outputs, 1, blockSize);

        // Copy samples to output buffer
        int samplesToCopy = std::min(blockSize, totalSamples - samplesWritten);
        for (int j = 0; j < samplesToCopy; j++) {
            outputBuffer[samplesWritten + j] = static_cast<float>(outputs[0][j]);
        }
        samplesWritten += samplesToCopy;
    }

    // Write output to AIFF file
    SndfileHandle outFile("./output.aif", SFM_WRITE, SF_FORMAT_AIFF | SF_FORMAT_PCM_16, 1, sampleRate);
    if (outFile) {
        outFile.write(outputBuffer.data(), totalSamples);
        std::cout << "\nWrote " << totalSamples << " samples to ./output.aif\n";
    } else {
        std::cerr << "\nFailed to create output file\n";
    }

    delete [] outputs[0];
    delete [] outputs;
    
    return 0;
}
