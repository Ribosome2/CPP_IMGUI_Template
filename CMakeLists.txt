cmake_minimum_required(VERSION 3.21)
project("GuiWithCMake")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_subdirectory("ImguiWithDirectX11")
include_directories("imgui/backends")
include_directories("imgui")


add_executable(${PROJECT_NAME} "KyleProject/src/main.cpp" ImguiWithDirectX11)
target_link_directories(${PROJECT_NAME} PUBLIC ImguiWithDirectX11)
link_libraries(${PROJECT_NAME} PUBLIC ImguiWithDirectX11 d3d11.lib dxgi.lib)
