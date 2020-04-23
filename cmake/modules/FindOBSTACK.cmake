# - Find obstack
# If obstack is not implemented by libc find
# a standalone version.

message(STATUS "Checking availability of standalone obstack library")

INCLUDE(CheckLibraryExists)

find_path(OBSTACK_INCLUDE_DIR obstack.h
	/usr/include
	/usr/local/include
	/usr/include/libdwarf
	~/usr/local/include
)

find_library(OBSTACK_LIBRARY
	NAMES obstack
	PATHS /usr/lib /usr/local/lib /usr/lib64 /usr/local/lib64 ~/usr/local/lib ~/usr/local/lib64
)
