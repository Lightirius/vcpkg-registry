# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Hpp
    REF d4d0ac48594c8079d0dd82d5ffb86dcb8901f06e #v1.3.250
    SHA512 5984d7220df236948bb9f26be4a5d07ad8fb97b47d8f41fa365a442c8d8674562f1d5cb4f5831aed1b61f1856b486ad5df4e57f559391522284f532a9c94a3bb
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/vulkan/vulkan.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include/vulkan")

# Handle copyright
configure_file("${SOURCE_PATH}/LICENSE.txt" "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright" COPYONLY)