# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="socket.io-adapter nodejs module"
HOMEPAGE="https://github.com/Automattic/socket.io-adapter#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-2.3.3
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io-adapter"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1
