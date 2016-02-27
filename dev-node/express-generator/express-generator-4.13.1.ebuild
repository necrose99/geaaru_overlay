# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Express Generator"
HOMEPAGE="https://github.com/expressjs/generator"
SRC_URI="https://github.com/expressjs/generator/archive/v${PV}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

S="${WORKDIR}/${PN/express-/}-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

inherit npmv1

# TODO check if rename express in express-node to avoid conflict
# with sci-biology/express
