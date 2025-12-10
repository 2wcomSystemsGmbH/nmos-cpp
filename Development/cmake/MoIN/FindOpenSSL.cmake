
set(OPENSSL_VERSION_NUMBER 1.1.1j)
set(OPENSSL_FOUND TRUE)
set(OpenSSL_VERSION  1.1.1j)
set(OPENSSL_INCLUDE_DIR /usr/include/openssl)
set(OPENSSL_LIBRARY_DIRS /usr/lib)
set(OPENSSL_ROOT_DIR /)

add_library(OpenSSL::ssl UNKNOWN IMPORTED)
set_target_properties(OpenSSL::ssl PROPERTIES
    IMPORTED_LOCATION "/usr/lib/libssl.so"  # or .lib, .a, etc.
    INTERFACE_INCLUDE_DIRECTORIES ${OPENSSL_INCLUDE_DIR}
)
add_library(OpenSSL::crypto UNKNOWN IMPORTED)
set_target_properties(OpenSSL::crypto PROPERTIES
    IMPORTED_LOCATION "/usr/lib/libcrypto.so"  # or .lib, .a, etc.
    INTERFACE_INCLUDE_DIRECTORIES ${OPENSSL_INCLUDE_DIR}
)
