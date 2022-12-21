# param-get-set

Simple test of getting/setting a single parameter.

## Dependencies

You'll need RNBO and CMake

## Directions

This example is currently pretty limited in what it can do. It processes a stereo file
called "anton.aif" in the src directory, producing a stereo output file called
"anton-out.aif".

1. Open the patch in `patches/param-tester.maxpat`
2. Export that patch into `export`
3. Make a `build` directory in `/parameter-get-set`
4. `cd build && cmake ..`
5. `cmake --build .`
6. This will create an executable `RNBOCommandLine`. Run this to see the output.

