
set(cpprestsdk_VERSION "2.10.12")
include_directories(${CPPREST_INCLUDE_DIR})

add_library(cpprestsdk::cpprest UNKNOWN IMPORTED)
set_target_properties(cpprestsdk::cpprest PROPERTIES
    IMPORTED_LOCATION "/home/entwickler/Development/workspace/sony-nmos-buildroot/os/buildrootX86/output/target/usr/lib/libcpprest.so"  # or .lib, .a, etc.
    INTERFACE_INCLUDE_DIRECTORIES ${CPPREST_INCLUDE_DIR}
)
