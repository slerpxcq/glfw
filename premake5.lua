project "glfw"
	kind "StaticLib"
	language "C"
    staticruntime "on"

    targetdir "%{wks.location}/bin/%{prj.name}/%{cfg.buildcfg}"
    objdir "%{wks.location}/obj/%{prj.name}/%{cfg.buildcfg}"

    files {
        "src/**.c",
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
            "_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"

