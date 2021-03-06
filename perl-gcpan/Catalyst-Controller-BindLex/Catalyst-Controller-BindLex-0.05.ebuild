# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Catalyst-Controller-BindLex-0.05

DESCRIPTION="Bind lexical variables to $c structures"
HOMEPAGE="http://search.cpan.org/search?query=Catalyst-Controller-BindLex&mode=dist"
SRC_URI="mirror://cpan/authors/id/M/MS/MSTROUT/Catalyst-Controller-BindLex-0.05.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/PadWalker
	perl-gcpan/Devel-LexAlias
	dev-perl/Array-RefElem
	perl-gcpan/Test-use-ok
	perl-gcpan/Catalyst-Runtime
	perl-gcpan/Devel-Caller
	dev-lang/perl"
