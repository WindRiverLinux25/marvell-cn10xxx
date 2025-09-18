COMPATIBLE_MACHINE:marvell-cn10xxx = "marvell-cn10xxx"

FILESEXTRAPATHS:prepend:marvell-cn10xxx := "${THISDIR}/${PN}:"
SRC_URI:append:marvell-cn10xxx = " \
        file://0001-config-add-arm64_cn10k_wrlinux_gcc-for-yocto-build.patch \
"

EXTRA_OEMESON:append:marvell-cn10xxx = " \
        --cross-file ${S}/config/arm/arm64_cn10k_wrlinux_gcc \
"
