# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

OPENSHOT_TREE="0.0.8"

inherit cmake-utils eutils

DESCRIPTION="Openshot Audio Library"
HOMEPAGE="http://www.openshot.org/"
SRC_URI="https://launchpad.net/libopenshot/0.0/${OPENSHOT_TREE}/+download/libopenshot-audio-${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="
	x11-libs/libXext
	doc? (
		app-doc/doxygen
	)
"
RDEPEND="${DEPEND}"

# TODO: Check how avoid install of headers files from Juce Project for different
#       libraries.

src_unpack() {

	mkdir ${S}

	cd ${S}
	unpack ${A}

}

src_configure() {
	CMAKE_BUILD_TYPE=None
	local mycmakeargs=(
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}"/usr/$(get_libdir)
		)
	use doc || mycmakeargs+=( -DDOXYGEN_EXECUTABLE= )

	cmake-utils_src_configure
}


# vim: ts=4 sw=4

