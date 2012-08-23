# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Catalyst-Plugin-Session-State-Cookie-0.14

DESCRIPTION="Cookie driver for Catalyst sessions"
HOMEPAGE="http://search.cpan.org/search?query=Catalyst-Plugin-Session-State-Cookie&mode=dist"
SRC_URI="mirror://cpan/authors/id/F/FL/FLORA/Catalyst-Plugin-Session-State-Cookie-0.14.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="perl-gcpan/namespace-autoclean
	perl-gcpan/Catalyst-Runtime
	dev-perl/MRO-Compat
	dev-perl/Moose
	perl-gcpan/Catalyst-Plugin-Session
	dev-lang/perl"
