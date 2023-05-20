# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Hpp
    REF e40e6b641e6d00173b65f35d2cc00f8c6eda7836 #v1.3.239
    SHA512 e735d54c09eacd77027e28acb33a732b50014bdef57bdc05aaa5c3d4e67b8fe69644cba4b5dc87ceecb7008b1b3f1ffce9a3502f7d33f3157c554593eff96e4f
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/vulkan/vulkan.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include/vulkan")

# Handle copyright
configure_file("${SOURCE_PATH}/LICENSE.txt" "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright" COPYONLY)