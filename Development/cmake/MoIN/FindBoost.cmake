set(Boost_FOUND TRUE)
set(Boost_VERSION 1.70.0)
set(Boost_ROOT /usr/local)
#set(BOOST_INCLUDEDIR /usr/local/include)
set(Boost_INCLUDE_DIRS /home/entwickler/Development/workspace/sony-nmos-buildroot/os/buildrootX86/output/build/boost-1.70.0)
set(Boost_LIBRARIES /home/entwickler/Development/workspace/sony-nmos-buildroot/os/buildrootX86/output/target/usr/lib)
set(Boost_LIBRARY_DIRS /home/entwickler/Development/workspace/sony-nmos-buildroot/os/buildrootX86/output/target/usr/lib)
set(Boost_LIBRARY_DIR /home/entwickler/Development/workspace/sony-nmos-buildroot/os/buildrootX86/output/target/usr/lib)
set(Boost_NO_SYSTEM_PATHS ON)
set(Boost_NO_WARN_NEW_VERSIONS ON)

add_library(Boost::system UNKNOWN IMPORTED)
set_target_properties(Boost::system PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_system.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
add_library(Boost::date_time UNKNOWN IMPORTED)
set_target_properties(Boost::date_time PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_date_time.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
add_library(Boost::regex UNKNOWN IMPORTED)
set_target_properties(Boost::regex PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_regex.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
add_library(Boost::thread UNKNOWN IMPORTED)
set_target_properties(Boost::thread PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_thread.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
add_library(Boost::chrono UNKNOWN IMPORTED)
set_target_properties(Boost::chrono PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_chrono.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
add_library(Boost::filesystem UNKNOWN IMPORTED)
set_target_properties(Boost::filesystem PROPERTIES
    IMPORTED_LOCATION "${Boost_LIBRARIES}/libboost_filesystem.so"
    INTERFACE_INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS}"
)
target_include_directories(Boost::system INTERFACE "$<BUILD_INTERFACE:${Boost_INCLUDE_DIR}>")
