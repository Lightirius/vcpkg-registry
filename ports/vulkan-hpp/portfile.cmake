# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Hpp
    REF 4848fc8e6a923757fd451e52b992dfac48e30814 #v1.3.236
    SHA512 de02af85dd92749c39b5f444182552703ba2189d62f77c47ff1d06eb861b2a6589a4a61950ca924a87ff04224598d6e2d1165011c059dcef4c1be88cdc3dc3c0
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/vulkan/vulkan.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include/vulkan")

# Handle copyright
configure_file("${SOURCE_PATH}/LICENSE.txt" "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright" COPYONLY)