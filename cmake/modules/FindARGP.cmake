# - Find argp
# If argp_parse is not implemented by libc find
# a standalone version.

message(STATUS "Checking availability of standalone argp library")

find_path(ARGP_INCLUDE_DIR argp.h
	/usr/include
	/usr/local/include
	/usr/include/libdwarf
	~/usr/local/include
)

find_library(ARGP_LIBRARY
	NAMES argp
	PATHS /usr/lib /usr/local/lib /usr/lib64 /usr/local/lib64 ~/usr/local/lib ~/usr/local/lib64
)
