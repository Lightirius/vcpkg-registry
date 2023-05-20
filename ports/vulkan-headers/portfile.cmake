# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Headers
    REF 2826791bed6a793f164bf534cd859968f13df8a9 # v1.3.236
    SHA512 76dda6e771213456eadb0cce57ef33c6b60b2308c24d000a1eb432da8b2336f4ade166229d9602279cb4dfcf535e3823399104ea3f02bef9bcb8f2741535a94c
    HEAD_REF master
)

set(VCPKG_BUILD_TYPE release)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
