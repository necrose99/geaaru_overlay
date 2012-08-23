# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Chart-OFC-0.08

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=Chart-OFC&mode=dist"
SRC_URI="mirror://cpan/authors/id/D/DR/DROLSKY/Chart-OFC-0.08.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND=">=dev-perl/MooseX-StrictConstructor-0.08
	dev-perl/List-MoreUtils
	perl-gcpan/Graphics-ColorNames
	>=dev-perl/Moose-0.79
	dev-lang/perl"
