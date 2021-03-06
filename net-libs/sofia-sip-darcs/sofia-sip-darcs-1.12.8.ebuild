# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/sofia-sip/sofia-sip-1.12.7.ebuild,v 1.1 2007/05/01 09:34:16 genstef Exp $

EDARCS_REPOSITORY="http://sofia-sip.org/repos/sofia-sip"
EDARCS_GET_CMD="get"


inherit eutils darcs

DESCRIPTION="RFC3261 compliant SIP User-Agent library"
HOMEPAGE="http://sofia-sip.sourceforge.net/"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

RDEPEND="dev-libs/glib
	ssl? ( dev-libs/openssl )"
DEPEND="${RDEPEND}"

src_compile() {
	./autogen.sh
	econf $(use_with ssl openssl) || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

	dodoc ChangeLog COPYRIGHTS README TODO
}
