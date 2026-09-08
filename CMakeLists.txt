cmake_minimum_required(VERSION 3.10)

project(shell LANGUAGES C)

set(CMAKE_C_STANDARD 11)

add_executable(shell src/main.c src/parsers/parser.c src/handlers/prompt_handler.c src/handlers/command_handler.c src/commands/commands.c)

target_include_directories(shell PRIVATE include)

install(TARGETS shell RUNTIME DESTINATION bin)

