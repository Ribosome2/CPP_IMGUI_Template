cmake_minimum_required(VERSION 3.21)
project("GuiWithCMake")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_subdirectory("ImguiWithDirectX11")
include_directories("imgui/backends")
include_directories("imgui")


add_executable(KyleProject "KyleProject/src/main.cpp")
target_link_directories(KyleProject PUBLIC ImguiWithDirectX11)
