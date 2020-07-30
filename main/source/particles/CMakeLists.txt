project(particles)

add_library(particles
    action_api.cpp
    actions.cpp
    general.h
    HLRender.cpp
    opengl.cpp
    p_vector.h
    papi.h
    particledefs.h
    system.cpp
)

target_link_libraries(particles common public)
target_include_directories(particles PUBLIC .)