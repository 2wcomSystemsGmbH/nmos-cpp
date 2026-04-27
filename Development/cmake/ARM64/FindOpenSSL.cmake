
set(OPENSSL_VERSION_NUMBER 1.1.1j)
set(OPENSSL_FOUND TRUE)
set(OpenSSL_VERSION  1.1.1j)
set(OPENSSL_INCLUDE_DIR /home/entwickler/Development/workspace/buildroot/output/host/aarch64-buildroot-linux-gnu/sysroot/usr/include)
set(OPENSSL_LIBRARY_DIRS /home/entwickler/Development/workspace/buildroot/output/target/lib)
set(OPENSSL_ROOT_DIR /home/entwickler/Development/workspace/buildroot/output/target)

add_library(OpenSSL::SSL UNKNOWN IMPORTED)
set_target_properties(OpenSSL::SSL PROPERTIES
    IMPORTED_LOCATION "/home/entwickler/Development/workspace/buildroot/output/target/usr/lib/libssl.so"  # or .lib, .a, etc.
    INTERFACE_INCLUDE_DIRECTORIES ${OPENSSL_INCLUDE_DIR}
)
add_library(OpenSSL::Crypto UNKNOWN IMPORTED)
set_target_properties(OpenSSL::Crypto PROPERTIES
    IMPORTED_LOCATION "/home/entwickler/Development/workspace/buildroot/output/target/usr/lib/libcrypto.so"  # or .lib, .a, etc.
    INTERFACE_INCLUDE_DIRECTORIES ${OPENSSL_INCLUDE_DIR}
)
