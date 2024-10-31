project "ImGui"
    kind "StaticLib"
	language "c++"
	cppdialect "c++17"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
        "imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",

		"misc/cpp/imgui_stdlib.h",
		"misc/cpp/imgui_stdlib.cpp",

		"imgui_stacklayout.h",
		"imgui_stacklayout.cpp",
		"imgui_stacklayout_internal.h"
	}

	includedirs {
		"./"
	}

	filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
		optimize "on"
		defines "NDEBUG"
