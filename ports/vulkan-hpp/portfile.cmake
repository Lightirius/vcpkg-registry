# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Hpp
    REF 2acce339514c4c30d1b1605314fc53b0f47ec9f9 #v1.3.243
    SHA512 d1fa174e5489b9d07eae14e415c00072c7d74a1e6c3219e1f418d3d917c7df3a130759bf9a0e5ff96ceb128bcfe1acad60fc30fb7e634d71cac4cf03a514f7fc
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/vulkan/vulkan.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include/vulkan")

# Handle copyright
configure_file("${SOURCE_PATH}/LICENSE.txt" "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright" COPYONLY)