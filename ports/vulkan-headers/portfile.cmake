# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Headers
    REF 9e61870ecbd32514113b467e0a0c46f60ed222c7 # v1.3.250
    SHA512 d627cb32bbd4b8886c7eb92686156f6c79e4d40cba2b9e05583241853b153ea6456fc567635f14cf8a70a9e153a9f288516c06b7194b52151d552d9122c4e694
    HEAD_REF master
)

set(VCPKG_BUILD_TYPE release)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
