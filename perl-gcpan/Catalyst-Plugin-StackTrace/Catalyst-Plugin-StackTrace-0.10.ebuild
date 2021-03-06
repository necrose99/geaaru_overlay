# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Catalyst-Plugin-StackTrace-0.10

DESCRIPTION="Display a stack trace on the error screen."
HOMEPAGE="http://search.cpan.org/search?query=Catalyst-Plugin-StackTrace&mode=dist"
SRC_URI="mirror://cpan/authors/id/M/MR/MRAMBERG/Catalyst-Plugin-StackTrace-0.10.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/Devel-StackTrace
	perl-gcpan/Catalyst-Runtime
	>=dev-perl/MRO-Compat-0.10
	dev-lang/perl"
