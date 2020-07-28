cmake_minimum_required(VERSION 3.5)

project(MSkin LANGUAGES CXX)


set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE RelWithDebInfo)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_PREFIX_PATH E:/Qt/Qt5.12.6/5.12.6/mingw73_64)

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
add_subdirectory(PluginTool/Launcher)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

if(ANDROID)
    add_library(MSkin SHARED main.cpp)
else()
    add_executable(MSkin WIN32 main.cpp)
endif()

target_compile_definitions(MSkin
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(MSkin
  PRIVATE Qt5::Core Qt5::Quick)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# These variables must use CACHE, otherwise QtCreator won't see them.

#if(ANDROID)
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android" CACHE INTERNAL "")
#    if (ANDROID_ABI STREQUAL "armeabi-v7a")
#        set(ANDROID_EXTRA_LIBS ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libcrypto.so ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libssl.so CACHE INTERNAL "")
#    endif()
#endif()
