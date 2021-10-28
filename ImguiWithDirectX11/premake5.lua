local repoPath ="../CoolIMGUIRepo/"
project "ImguiWithDirectX11"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		repoPath.."imgui/imconfig.h",
		repoPath.."imgui/imgui.h",
		repoPath.."imgui/imgui.cpp",
		repoPath.."imgui/imgui_draw.cpp",
		repoPath.."imgui/imgui_internal.h",
		repoPath.."imgui/imgui_widgets.cpp",
		repoPath.."imgui/imstb_rectpack.h",
		repoPath.."imgui/imstb_textedit.h",
		repoPath.."imgui/imstb_truetype.h",
		repoPath.."imgui/imgui_demo.cpp",
		repoPath.."imgui/examples/imgui_impl_win32.h",
		repoPath.."imgui/examples/imgui_impl_win32.cpp",
		repoPath.."imgui/examples/imgui_impl_dx11.h",
		repoPath.."imgui/examples/imgui_impl_dx11.cpp",
	}

	includedirs
	{
		"%{prj.name}/src",
		repoPath.."imgui/",
		repoPath.."imgui/examples",
	}
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"


	filter "configurations:Debug"
		defines "IMGUI_IMPL_WIN32_DISABLE_GAMEPAD"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "IMGUI_IMPL_WIN32_DISABLE_GAMEPAD"
		runtime "Release"
		optimize "on"
