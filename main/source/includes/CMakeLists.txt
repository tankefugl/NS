# If possible, these external dependencies should be managed with package managers, e.g. Conan

add_library(VGUI STATIC IMPORTED GLOBAL)
if(WIN32)
    find_library(VGUI_LIBRARY_LOCATION NAMES vgui.lib HINTS vgui/lib/win32_vc6)
    set_target_properties(VGUI PROPERTIES
        IMPORTED_LOCATION ${VGUI_LIBRARY_LOCATION}
        IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    )
    target_include_directories(VGUI INTERFACE vgui/include)
endif(WIN32)

add_library(zlib STATIC IMPORTED GLOBAL)
if(WIN32)
    find_library(zlib_LIBRARY_LOCATION NAMES zlib.lib HINTS zlib-1.2.8)
    set_target_properties(zlib PROPERTIES
        IMPORTED_LOCATION ${zlib_LIBRARY_LOCATION}
        IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    )
    target_include_directories(VGUI INTERFACE zlib-1.2.8)
endif(WIN32)

add_library(libpng STATIC IMPORTED GLOBAL)
if(WIN32)
    find_library(libpng_LIBRARY_LOCATION NAMES libpng.lib HINTS lpng1251)
    set_target_properties(libpng PROPERTIES
        IMPORTED_LOCATION ${libpng_LIBRARY_LOCATION}
        IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    )
    target_include_directories(VGUI INTERFACE lpng1251)
endif(WIN32)

add_library(curl STATIC IMPORTED GLOBAL)
if (WIN32)
    find_library(curl_LIBRARY_LOCATION NAMES libcurl_a.lib HINTS libcurl-7.50-nossl)
    set_target_properties(curl PROPERTIES
        IMPORTED_LOCATION ${curl_LIBRARY_LOCATION}
        IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    )
    target_include_directories(curl INTERFACE libcurl-7.50-nossl/include)
endif(WIN32)
