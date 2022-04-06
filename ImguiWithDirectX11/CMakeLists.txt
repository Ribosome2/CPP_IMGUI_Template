
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(repoPath "../imgui")
add_library(ImguiWithDirectX11
        "../imgui/imconfig.h"
        "../imgui/imgui.h"
        "../imgui/imgui.cpp"
        "../imgui/imgui_draw.cpp"
        "../imgui/imgui_internal.h"
        "../imgui/imgui_internal.h"
        "../imgui/imgui_widgets.cpp"
        "../imgui/imstb_rectpack.h"
        "../imgui/imstb_textedit.h"
        "../imgui/imstb_truetype.h"
        "../imgui/imgui_demo.cpp"
        "../imgui/imgui_tables.cpp"
        "../imgui/backends/imgui_impl_win32.h"
        "../imgui/backends/imgui_impl_win32.cpp"
        "../imgui/backends/imgui_impl_win32.cpp"
        "../imgui/backends/imgui_impl_dx11.h"
        "../imgui/backends/imgui_impl_dx11.cpp"
        )