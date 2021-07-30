cmake_minimum_required(VERSION 3.20)
project(Assembly_helloworld C)
enable_language(C ASM)

set(CMAKE_C_STANDARD 99)

add_executable(Assembly_helloworld hello.asm)
