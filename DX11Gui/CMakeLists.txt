CMAKE_MINIMUM_REQUIRED(VERSION 3.21)
PROJECT(DX11Gui)
SET(CMAKE_CXX_STANDARD 17)
SET(CMAKE_CXX_STANDARD_REQUIRED True)

ADD_COMPILE_DEFINITIONS(IMGUI_IMPL_WIN32_DISABLE_GAMEPAD)
set(imgui_src_list
        "src/imguiCore/imconfig.h"
        "src/imguiCore/imgui.h"
        "src/imguiCore/imgui.cpp"
        "src/imguiCore/imgui_draw.cpp"
        "src/imguiCore/imgui_internal.h"
        "src/imguiCore/imgui_internal.h"
        "src/imguiCore/imgui_widgets.cpp"
        "src/imguiCore/imstb_rectpack.h"
        "src/imguiCore/imstb_textedit.h"
        "src/imguiCore/imstb_truetype.h"
        "src/imguiCore/imgui_demo.cpp"
        "src/imguiCore/imgui_tables.cpp"
        "src/imguiCore/imgui_impl_win32.h"
        "src/imguiCore/imgui_impl_win32.cpp"
        "src/imguiCore/imgui_impl_dx11.h"
        "src/imguiCore/imgui_impl_dx11.cpp"
        )

ADD_EXECUTABLE(${PROJECT_NAME}
        "src/main.cpp"
        "src/resource.h"
        ${imgui_src_list}
        )

target_link_libraries(${PROJECT_NAME}  PRIVATE d3d11 dxgi)