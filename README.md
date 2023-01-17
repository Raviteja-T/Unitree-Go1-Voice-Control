# The unitree_legged_sdk v3.5.1 is control by voice

### Notice
## support robot: Go1
## OS : Ubuntu 20.04.5 LTS

### Dependencies
* [Boost](https://github.com/Raviteja-T/Unitree-Go1-Voice-Control/blob/main/Dependencies/install%20Boost.pdf)
* [CMake](https://github.com/Raviteja-T/Unitree-Go1-Voice-Control/blob/main/Dependencies/CMake%20install.pdf)
* [LCM](https://lcm-proj.github.io) (version 1.4.0 or higher)
* [g++](https://github.com/Raviteja-T/Unitree-Go1-Voice-Control/blob/main/Dependencies/G%2B%2B%20install.pdf)

```bash
cd lcm-x.x.x
mkdir build
cd build
cmake ../
make
sudo make install
```
### add new cpp filenames in CMakeList.txt file.
add_executable(example_copy examples/example_copy.cpp) \n
target_link_libraries(example_copy ${EXTRA_LIBS})
     
### set(EXTRA_LIBS -pthread libunitree_legged_sdk_amd64.so lcm)


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
