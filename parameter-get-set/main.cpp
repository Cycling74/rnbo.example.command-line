#include <iostream>
#include "RNBO.h"

using namespace RNBO;

const uint32_t blocksize = 64;
const uint32_t blockcount = 100;

class LoggingParameterHandler : EventHandler {

  void eventsAvailable() override {
#ifndef __NOT_THREAD_SAFE
    drainEvents();
#endif
  }

  void handleParameterEvent(const ParameterEvent& event) override {
    fprintf(
      stdout, 
      "ParameterEvent: parameterIndex=%d time=%.3f value=%.4f source=%p\n",
      event.getIndex(),
      event.getTime(),
      event.getValue(),
      event.getSource()
    );
  }
};

int main(int argc, const char * argv[]) {
  LoggingParameterHandler handler;
  CoreObject rnboObject;

#ifndef __NOT_THREAD_SAFE
  auto interface = 
        rnboObject.createParameterInterface(ParameterEventInterface::MultiProducer, (EventHandler *) &handler);
#else 
  auto interface = 
        rnboObject.createParameterInterface(ParameterEventInterface::NotThreadSafe, (EventHandler *) &handler);
#endif

  rnboObject.prepareToProcess(44100, blocksize);
  SampleValue** outputs = new SampleValue*[1];
  outputs[0] = new double[blocksize];

  for (int i = 0; i < blockcount; i++) {
    rnboObject.process(nullptr, 0, outputs, 1, blocksize);
    rnboObject.setParameterValue(0, ((float) i) / blockcount);
  }

  delete [] outputs[0];
  delete [] outputs;

  return 0;
}