# v3.5.1
The unitree_legged_sdk is control by voice

### Notice
support robot: Go1

### Dependencies
* [Boost](http://www.boost.org) (version 1.5.4 or higher)
* [CMake](http://www.cmake.org) (version 2.8.3 or higher)
* [LCM](https://lcm-proj.github.io) (version 1.4.0 or higher)
* [g++](https://gcc.gnu.org/) (version 8.3.0 or higher)

```bash
cd lcm-x.x.x
mkdir build
cd build
cmake ../
make
sudo make install
```
add new cpp filenames in CMakeList.txt file.
eg : add_executable(example_copy examples/example_copy.cpp)
     target_link_libraries(example_copy ${EXTRA_LIBS})
     
*** set(EXTRA_LIBS -pthread libunitree_legged_sdk_amd64.so lcm) ***


### Build
```bash
mkdir build
cd build
cmake ../
make
```

### Usage
1. python3 voice_command.py
2. sudo ./example_copy.cpp
