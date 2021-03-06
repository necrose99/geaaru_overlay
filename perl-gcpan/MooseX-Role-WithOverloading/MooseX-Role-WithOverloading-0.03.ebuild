# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/MooseX-Role-WithOverloading-0.03

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=MooseX-Role-WithOverloading&mode=dist"
SRC_URI="mirror://cpan/authors/id/F/FL/FLORA/MooseX-Role-WithOverloading-0.03.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/namespace-clean
	>=dev-perl/namespace-autoclean-0.09
	dev-perl/MooseX-Types
	perl-gcpan/aliased
	dev-lang/perl"
