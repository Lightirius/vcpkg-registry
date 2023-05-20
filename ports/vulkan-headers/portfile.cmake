# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Headers
    REF 65ad768d8603671fc1085fe115019e72a595ced8 # v1.3.243
    SHA512 bc357e837d805574edd36a221746e195b18c226fb5f6fbee6a86f619c677e30f540d46bd05eb7add2945a23608e08da03eb64528cf61f7e48daa58a22a69e0c1
    HEAD_REF master
)

set(VCPKG_BUILD_TYPE release)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
