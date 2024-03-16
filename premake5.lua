project "ffmpeg"
    kind "StaticLib" -- Static library project
    language "C"
    staticruntime "on"

    print("Please run the command: \"./configure && make && sudo make install\" before compiling FFmpeg")

    includedirs {"."}

    filter "system:windows"
        architecture "x86_64"

    filter "system:linux"
        architecture "x86_64"

    filter "system:macosx"
        architecture "ARM64"

    files {
        "*.h",
        "*.c"
    }
        
    -- libavformat
    files {
        "libavformat/*.h",
        "libavformat/*.c",
        "libavformat/*.cpp",
        "libavformat/*.S",
        "libavformat/*.asm"
    }
    
    -- libavcodec
    files {
        "libavcodec/*.h",
        "libavcodec/*.c",
        "libavcodec/*.cpp",
        "libavcodec/*.S",
        "libavcodec/*.asm"
    }
    
    -- libavutil
    files {
        "libavutil/*.h",
        "libavutil/*.c",
        "libavutil/*.cpp",
        "libavutil/*.S",
        "libavutil/*.asm"
    }

    filter "architecture:x86_64"
        -- libavutil
        files {
            "libavutil/x86/*.h",
            "libavutil/x86/*.c",
            "libavutil/x86/*.cpp",
            "libavutil/x86/*.S",
            "libavutil/x86/*.asm"
        }

        -- libavcodec
        files {
            "libavcodec/x86/*.h",
            "libavcodec/x86/*.c",
            "libavcodec/x86/*.cpp",
            "libavcodec/x86/*.S",
            "libavcodec/x86/*.asm"
        }

        -- libavformat
        files {
            "libavformat/x86/*.h",
            "libavformat/x86/*.c",
            "libavformat/x86/*.cpp",
            "libavformat/x86/*.S",
            "libavformat/x86/*.asm"
        }

    filter "architecture:ARM64"
        -- libavutil
        files {
            "libavutil/arm/*.h",
            "libavutil/arm/*.c",
            "libavutil/arm/*.cpp",
            "libavutil/arm/*.S",
            "libavutil/arm/*.asm"
        }

        -- libavcodec
        files {
            "libavcodec/arm/*.h",
            "libavcodec/arm/*.c",
            "libavcodec/arm/*.cpp",
            "libavcodec/arm/*.S",
            "libavcodec/arm/*.asm"
        }

        -- libavformat
        files {
            "libavformat/arm/*.h",
            "libavformat/arm/*.c",
            "libavformat/arm/*.cpp",
            "libavformat/arm/*.S",
            "libavformat/arm/*.asm"
        }

    filter "architecture:aarch64"
        -- libavutil
        files {
            "libavutil/aarch64/*.h",
            "libavutil/aarch64/*.c",
            "libavutil/aarch64/*.cpp",
            "libavutil/aarch64/*.S",
            "libavutil/aarch64/*.asm"
        }

        -- libavcodec
        files {
            "libavcodec/aarch64/*.h",
            "libavcodec/aarch64/*.c",
            "libavcodec/aarch64/*.cpp",
            "libavcodec/aarch64/*.S",
            "libavcodec/aarch64/*.asm"
        }

        -- libavformat
        files {
            "libavformat/aarch64/*.h",
            "libavformat/aarch64/*.c",
            "libavformat/aarch64/*.cpp",
            "libavformat/aarch64/*.S",
            "libavformat/aarch64/*.asm"
        }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"