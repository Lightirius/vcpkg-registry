# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Headers
    REF 63af1cf1ee906ba4dcd5a324bdd0201d4f4bfd12 # v1.3.246
    SHA512 368d9f57674edf5498867d8dbdb532fe38c05eff0fa9846d4b4e866d962b92b74b522fbac36282a7afdd030be85fa9b07694dfb7d2230296f00a35fe89671dc9
    HEAD_REF master
)

set(VCPKG_BUILD_TYPE release)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
