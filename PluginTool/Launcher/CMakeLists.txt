cmake_minimum_required(VERSION 3.0)
project(Launcher)

set(Resouce MANIFEST)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

########################################################################################
set(PLUGIN C:/Users/61419/Desktop/Magic)
include_directories(
    ${PLUGIN}/Include/Core
    ${PLUGIN}/Include/Utility
    ${PLUGIN}/Include/PluginFramework
)
link_directories(${PLUGIN}/Lib)
include(${PLUGIN}/Library.cmake)
########################################################################################

link_libraries(Magic)
include_directories(Include)
set(SRC
    Source/LauncherImpl.cpp
    Source/LauncherActivator.cpp
)
function(EMBEDFILE OUTFILE)
    execute_process(
        RESULT_VARIABLE ERROR
        COMMAND ${PLUGIN}/Bin/EmbedFile ${CMAKE_BINARY_DIR}/${OUTFILE} ${PROJECT_SOURCE_DIR}/${OUTFILE}.MF
    )
    message("${PLUGIN}/Bin/EmbedFile")
    message("Now Generating EmbedFile{ ${ERROR} }...")
    add_library(Launcher MODULE ${SRC} ${CMAKE_BINARY_DIR}/${OUTFILE}.cpp)
endfunction(EMBEDFILE)

EMBEDFILE(${Resouce})