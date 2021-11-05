local repoPath ="../imgui/"
project "ImguiWithDirectX11"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		repoPath.."imconfig.h",
		repoPath.."imgui.h",
		repoPath.."imgui.cpp",
		repoPath.."imgui_draw.cpp",
		repoPath.."imgui_internal.h",
		repoPath.."imgui_widgets.cpp",
		repoPath.."imstb_rectpack.h",
		repoPath.."imstb_textedit.h",
		repoPath.."imstb_truetype.h",
		repoPath.."imgui_demo.cpp",
		repoPath.."imgui_tables.cpp",
		repoPath.."backends/imgui_impl_win32.h",
		repoPath.."backends/imgui_impl_win32.cpp",
		repoPath.."backends/imgui_impl_dx11.h",
		repoPath.."backends/imgui_impl_dx11.cpp",
	}

	includedirs
	{
		"%{prj.name}/src",
		repoPath,
		repoPath.."examples",
		repoPath.."backends",
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
