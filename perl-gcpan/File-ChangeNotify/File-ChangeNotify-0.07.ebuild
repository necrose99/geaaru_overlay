# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/File-ChangeNotify-0.07

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=File-ChangeNotify&mode=dist"
SRC_URI="mirror://cpan/authors/id/D/DR/DROLSKY/File-ChangeNotify-0.07.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/Class-MOP
	>=perl-gcpan/MooseX-Params-Validate-0.12
	virtual/perl-Module-Pluggable
	dev-perl/Moose
	perl-gcpan/MooseX-SemiAffordanceAccessor
	dev-lang/perl"
