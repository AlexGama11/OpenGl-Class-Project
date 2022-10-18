workspace "OpenGl Project"
	location ".\\sln\\"

	targetdir "%{wks.location}\\bin\\%{cfg.buildcfg}\\"
	objdir "%{wks.location}\\obj\\%{cfg.buildcfg}\\%{prj.name}\\"
	buildlog "%{wks.location}\\obj\\%{cfg.buildcfg}\\%{prj.name}.log"

	largeaddressaware "on"
	editandcontinue "off"
	staticruntime "on"

	systemversion "latest"
	characterset "ascii"
	architecture "x86"
	warnings "extra"

	buildoptions {
		"/std:c++17",
	}

	syslibdirs {
		".\\DevLib\SDL\lib\\",
	}

	includedirs {
		".\\OpenGL\\",
		".\\DevLib\SDL\include\\",
	}
	
	platforms {
		"x86",
	}

	configurations {
		"Release",
		"Debug",
	}

	configuration "Release"
		defines "NDEBUG"
		optimize "debug"
		runtime "debug"
		symbols "on"

	configuration "Debug"
		defines "DEBUG"
		optimize "debug"
		runtime "debug"
		symbols "on"

	project "OpenGL Project"
		targetname "OpenGl Project"
		language "c++"
		kind "consoleapp"
		warnings "off"
		
		links {
			"SDL2",
		}
		
		files {
			".\\OpenGL\\**",
		}

		includedirs {
			".\\OpenGL\\",
		}
		
		vpaths {
   			["Headers"] = "**.h",
   			["Sources/*"] = {"**.c", "**.cpp"},
   			["Docs"] = "**.txt"
		}
