project(public)

add_library(public
    interface.cpp
    pman_triangleffect.h
    pman_particlemem.h
    particleman.h
    keydefs.h
    interface.h
    FileSystem.h
    archtypes.h
    steam/steamtypes.h
    cl_dll/IGameClientExports.h
)

target_include_directories(public PUBLIC .)