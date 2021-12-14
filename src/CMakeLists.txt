project (RamFS)

set(CXX_SOURCES 
    RamFS.cpp)

add_executable(${PROJECT_NAME} ${CXX_SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE ../src)

target_compile_options (${PROJECT_NAME} PRIVATE -Wall -Wextra)

