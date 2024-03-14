project "ffmpeg"
    kind "StaticLib" -- Static library project
    language "C"
    staticruntime "on"
    
    -- libavutil
    files {
        "libavutil/*.h",
        "libavutil/*.c",
        "libavutil/*.cpp",
        "libavutil/*.S",
        "libavutil/*.asm"
    }

    -- libavcodec
    files {
        "libavcodec/*.h",
        "libavcodec/*.c",
        "libavcodec/*.cpp",
        "libavcodec/*.S",
        "libavcodec/*.asm"
    }

    -- libavformat
    files {
        "libavformat/*.h",
        "libavformat/*.c",
        "libavformat/*.cpp",
        "libavformat/*.S",
        "libavformat/*.asm"
    }
    
    filter "architecture:x86_64"
        -- libavutil
        files {
            "libavutil/x86_64/*.h",
            "libavutil/x86_64/*.c",
            "libavutil/x86_64/*.cpp",
            "libavutil/x86_64/*.S",
            "libavutil/x86_64/*.asm"
        }

        -- libavcodec
        files {
            "libavcodec/x86_64/*.h",
            "libavcodec/x86_64/*.c",
            "libavcodec/x86_64/*.cpp",
            "libavcodec/x86_64/*.S",
            "libavcodec/x86_64/*.asm"
        }

        -- libavformat
        files {
            "libavformat/x86_64/*.h",
            "libavformat/x86_64/*.c",
            "libavformat/x86_64/*.cpp",
            "libavformat/x86_64/*.S",
            "libavformat/x86_64/*.asm"
        }

    filter "architecture:ARM64"
        -- libavutil
        files {
            "libavutil/ARM64/*.h",
            "libavutil/ARM64/*.c",
            "libavutil/ARM64/*.cpp",
            "libavutil/ARM64/*.S",
            "libavutil/ARM64/*.asm"
        }

        -- libavcodec
        files {
            "libavcodec/ARM64/*.h",
            "libavcodec/ARM64/*.c",
            "libavcodec/ARM64/*.cpp",
            "libavcodec/ARM64/*.S",
            "libavcodec/ARM64/*.asm"
        }

        -- libavformat
        files {
            "libavformat/ARM64/*.h",
            "libavformat/ARM64/*.c",
            "libavformat/ARM64/*.cpp",
            "libavformat/ARM64/*.S",
            "libavformat/ARM64/*.asm"
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