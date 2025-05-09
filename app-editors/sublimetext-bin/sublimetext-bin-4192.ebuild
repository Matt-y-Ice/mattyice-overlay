# Copyright 2024 MattyIce
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="sublime_text"
MY_PV="${PV}"

DESCRIPTION="Sophisticated text editor for code, markup and prose"
HOMEPAGE="https://www.sublimetext.com"
SRC_URI="https://download.sublimetext.com/sublime_text_build_${PV}_x64.tar.xz -> ${P}.tar.xz"

LICENSE="Sublime"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="mirror bindist strip"

RDEPEND="
    dev-libs/glib
    dev-libs/libffi
    dev-libs/libpcre2
    media-libs/mesa
    x11-libs/libX11
    x11-libs/libxcb
    x11-libs/libXau
    x11-libs/libXdmcp
"

QA_PREBUILT="opt/${MY_PN}/*"

S="${WORKDIR}/${MY_PN}"

src_install() {
    dodir /opt
    cp -a "${S}" "${D}/opt/${MY_PN}"

    dosym ../../opt/${MY_PN}/sublime_text /usr/bin/sublime_text

    sed -i 's|Exec=/opt/sublime_text/sublime_text|Exec=/usr/bin/sublime_text|' "${S}/sublime_text.desktop"
    insinto /usr/share/applications
    doins "${S}/sublime_text.desktop"

    newicon -s 128 "${S}/Icon/128x128/sublime-text.png" sublime-text.png
}

pkg_postinst() {
    xdg_desktop_database_update
    xdg_icon_cache_update
    xdg_mimeinfo_database_update
}

pkg_postrm() {
    xdg_desktop_database_update
    xdg_icon_cache_update
    xdg_mimeinfo_database_update
}
