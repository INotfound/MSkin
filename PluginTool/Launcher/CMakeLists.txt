cmake_minimum_required(VERSION 3.0)
project(Launcher)

set(Resouce MANIFEST)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

##########QT############
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
##########QT############

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
    add_library(Launcher MODULE ${SRC} ${CMAKE_BINARY_DIR}/${OUTFILE}.cpp ${PROJECT_SOURCE_DIR}/qml.qrc)

    find_package(Qt5 COMPONENTS Core Quick REQUIRED)
    target_compile_definitions(Launcher
        PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
    target_link_libraries(Launcher
        PRIVATE Qt5::Core Qt5::Quick)
        
endfunction(EMBEDFILE)

EMBEDFILE(${Resouce})