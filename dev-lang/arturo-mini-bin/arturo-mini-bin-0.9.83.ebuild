# Copyright 2025 MattyIce
# Distributed under the terms of the GNU General Public License v3

EAPI=8

MY_PN="arturo"
MY_PV="${PV}"

DESCRIPTION="Modern, expressive, functional programming language for simplicity and rapid prototyping"
HOMEPAGE="https://arturo-lang.io/"
SRC_URI="https://github.com/arturo-lang/arturo/releases/download/v${PV}/${MY_PN}-${MY_PV}-mini-x86_64-linux.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="mirror bindist strip"

RDEPEND=""
QA_PREBUILT="/opt/${MY_PN}/*"

S="${WORKDIR}"

src_install() {
    dodir /opt
    cp -a "${S}" "${D}/opt/${MY_PN}"

    # Symlink to /usr/bin
    dosym /opt/${MY_PN}/arturo /usr/bin/arturo
}
