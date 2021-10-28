workspace "KyleWorkSpace"
	architecture "x64"
	startproject "SVNLockTool"

	configurations
	{
		"Debug",
		"Release",
	}
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)
IncludeDir = {}
IncludeDir["ImguiWithDirectX11"] = "SVNLockTool/vendor/imgui"

include "ImguiWithDirectX11"

local imguiRepoPath ="imguiRepo"
project "KyleProject"
	location "KyleProject"
	kind "ConsoleApp"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.rc",
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp",
	}

	includedirs
	{
		"%{prj.name}/src",
		"%{IncludeDir.ImguiWithDirectX11}",
		imguiRepoPath.."/imgui/",
		imguiRepoPath.."/imgui/examples",
	}

	links 
	{ 
		"ImguiWithDirectX11",
		"d3d11.lib",
		"dxgi.lib",
	}
	filter "system:windows"
		cppdialect "C++17"
		systemversion "latest"


	filter "configurations:Debug"
		defines "IMGUI_IMPL_WIN32_DISABLE_GAMEPAD"
		runtime "Debug"
		symbols "On"
	
	filter "configurations:Release"
		defines "IMGUI_IMPL_WIN32_DISABLE_GAMEPAD"
		runtime "Release"
		optimize "on"


