# sound-file-mixer

Simple test of loading and mixing sound files

## Dependencies

You'll need RNBO and CMake. The CMakeLists.txt will pull in a dependency on libsndfile, so you'll need an internet connection as well.

## Directions

The patch itself simply plays the first second of two different sound files on a loop. It mixes together their output, and outputs the result. The code demonstrates populating the buffers based on exported dependencies, and then saving the result locally. The output file will always be called "output.aif".

1. Open the patch in `patches/sound-file-mixer.maxpat`
2. Export that patch into `export`
3. Make a `build` directory in this directory, `/sound-file-mixer`
4. `cd build && cmake ..`
5. `cmake --build .`
6. `cd ..`
7. `./RNBOCommandLine`
