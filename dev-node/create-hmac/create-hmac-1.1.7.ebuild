# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="node style hmacs in the browser"
HOMEPAGE="https://github.com/crypto-browserify/createHmac"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/cipher-base-1.0.4
	>=dev-node/create-hash-1.2.0
	>=dev-node/inherits-2.0.3
	>=dev-node/ripemd160-2.0.2
	>=dev-node/safe-buffer-5.1.2
	>=dev-node/sha-js-2.4.11
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

