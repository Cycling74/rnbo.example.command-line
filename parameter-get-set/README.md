# param-get-set

Simple test of getting/setting a single parameter.

## Dependencies

You'll need RNBO and CMake

## Directions

This example simply loads a RNBO object, sets some parameters, and prints their values. The RNBO patch is also modifying parameters as it processes, so you can use this code to see how to watch parameter values as they change.

1. Open the patch in `patches/param-tester.maxpat`
2. Export that patch into `export`
3. Make a `build` directory in `/parameter-get-set`
4. `cd build && cmake ..`
5. `cmake --build .`
6. `cd ..`
7. `./RNBOCommandLine`
