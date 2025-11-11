outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "glfw"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.c",
        "include/**.h"
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        defines { "_GLFW_WIN32" }
