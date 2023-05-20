# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Hpp
    REF 678295aa75692468cb5fc32af5336aee817ab810 #v1.3.246
    SHA512 f5e0b9cedb63cfb702a89a158476b36939cbaa5e2d6748e864128f259e034ff63cb994df3dd5e593981349a5358de1cffc5f8ae5104df2cd58c3497faabb86d8
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/vulkan/vulkan.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include/vulkan")

# Handle copyright
configure_file("${SOURCE_PATH}/LICENSE.txt" "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright" COPYONLY)