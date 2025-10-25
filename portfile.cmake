include(vcpkg_common_functions)
# vcpkg_from_github(
#     OUT_SOURCE_PATH SOURCE_PATH
#     REPO newohrim/string_id
#     # REF 6.0.0
#     # SHA512 7deb5bd843ae6b9d4b58dca9c68c1cfe7b55a41040f358247f5309655188d1ae194ff414437c068f74367f078faa214b5883e8c9e634c7623dcda50850e24766
#     HEAD_REF vcpkg-test
# )
vcpkg_configure_cmake(
    # SOURCE_PATH ${SOURCE_PATH}
    SOURCE_PATH ${CURRENT_PORT_DIR}
    PREFER_NINJA
    OPTIONS
        -DFG_BUILD_TEST=OFF
)

vcpkg_install_cmake()
# file(INSTALL ${SOURCE_PATH}/LICENSE.rst DESTINATION ${CURRENT_PACKAGES_DIR}/share/fmt RENAME copyright)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)

vcpkg_copy_pdbs()

