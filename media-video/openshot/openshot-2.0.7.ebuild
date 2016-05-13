# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_REQ_USE=xml
PYTHON_COMPAT=( python{3_3,3_4,3_5} )

inherit versionator distutils-r1 python-r1 fdo-mime

DESCRIPTION="Free, open-source, non-linear video editor to create and edit videos and movies"
HOMEPAGE="http://www.openshotvideo.com"
SRC_URI="https://launchpad.net/${PN}/$(get_version_component_range 1-2)/${PV}/+download/${PN}-qt-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+ffmpeg libav +python"
REQUIRED_USE="|| ( python ffmpeg )"

RDEPEND="
	>=media-libs/libopenshot-0.1.1
	dev-python/PyQt5[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]
	dev-qt/qtmultimedia:5
	dev-qt/qtwebkit:5
	dev-qt/qtsvg:5
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	ffmpeg? (
		libav? ( media-video/libav:=[encode,sdl,x264,mp3,theora] )
		!libav? ( media-video/ffmpeg:0=[encode,sdl,x264,mp3,theora] )
	)
	dev-python/httplib2[${PYTHON_USEDEP}]
	dev-python/librsvg-python
"

S="${WORKDIR}/${PN}-qt-${PV}"

src_unpack() {
	mkdir ${S}
	cd ${S}
	unpack ${A}
}

src_prepare() {
	sed -ie '/launcher/,+1d' setup.py || die
	sed -ie '/FAILED = /,$d' setup.py || die
}

python_install() {
	distutils-r1_python_install

	# Do link to openshot-qt as openstho
	dosym ${EROOT}usr/bin/openshot-qt ${EROOT}usr/bin/openshot
}

pkg_postinst() {
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
}

pkg_postrm() {
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
}