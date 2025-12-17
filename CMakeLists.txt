cmake_minimum_required(VERSION 3.20)
project(InventorySystem LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(PQXX REQUIRED)

add_executable(inventory_app
        src/main.cpp
        src/db/Db.cpp
        src/repo/ProductRepository.cpp
        src/service/InventoryService.cpp
        src/ui/Cli.cpp
)

target_include_directories(inventory_app PRIVATE src)
target_link_libraries(inventory_app PRIVATE pqxx pq)