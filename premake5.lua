workspace "KyleWorkSpace"
	architecture "x64"
	startproject "KyleProject"

	configurations
	{
		"Debug",
		"Release",
	}
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)

include "ImguiWithDirectX11"

local imguiRepoPath ="imgui"
project "KyleProject"
	location "KyleProject"
	kind "ConsoleApp"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/**.rc",
		"%{prj.name}/**.h",
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp",
	}

	includedirs
	{
		"%{prj.name}/src",
		imguiRepoPath,
		imguiRepoPath.."/backends",
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


