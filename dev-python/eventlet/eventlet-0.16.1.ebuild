# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/eventlet/eventlet-0.15.2.ebuild,v 1.2 2014/10/19 03:26:20 idella4 Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 python3_2 python3_3 python3_4 )

inherit distutils-r1

DESCRIPTION="Highly concurrent networking library"
HOMEPAGE="http://pypi.python.org/pypi/eventlet https://github.com/eventlet/eventlet/"
SRC_URI="mirror://pypi/e/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples test"

RDEPEND=">=dev-python/greenlet-0.3[${PYTHON_USEDEP}]"
DEPEND="doc? ( dev-python/sphinx[${PYTHON_USEDEP}]
		>=dev-python/python-docs-2.7.6-r1:2.7 )
	test? ( ${RDEPEND}
		dev-python/pyopenssl[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}] )"

python_prepare_all() {
	if use doc; then
		local PYTHON_DOC_ATOM=$(best_version --host-root dev-python/python-docs:2.7)
		local PYTHON_DOC_VERSION="${PYTHON_DOC_ATOM#dev-python/python-docs-}"
		local PYTHON_DOC="/usr/share/doc/python-docs-${PYTHON_DOC_VERSION}/html"
		local PYTHON_DOC_INVENTORY="${PYTHON_DOC}/objects.inv"
		sed -i "s|'http://docs.python.org/': None|'${PYTHON_DOC}': '${PYTHON_DOC_INVENTORY}'|" doc/conf.py || die
	fi

	# Prevent file collisions from teestsuite
	sed -e "s:'tests', :'tests', 'tests.*', :" -i setup.py || die

	distutils-r1_python_prepare_all
}

python_compile_all() {
	# https://github.com/eventlet/eventlet/issues/152
	use doc && emake -C doc html
}

src_test() {
	# Tests bind to static addresses, bug #456920
	local DISTUTILS_NO_PARALLEL_BUILD=1
	distutils-r1_src_test
}

python_test() {
	# Several errors 1 failure
	# https://github.com/eventlet/eventlet/issues/151
	nosetests || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/_build/html/. )
	use examples && local EXAMPLES=( examples/. )
	distutils-r1_python_install_all
}
