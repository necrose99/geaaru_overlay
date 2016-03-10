# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Parse, validate, manipulate, and display dates"
HOMEPAGE="https://www.npmjs.com/package/moment"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_PKG_DIRS="
locale
min
src
"

NPM_NO_DEPS=1

inherit npmv1
