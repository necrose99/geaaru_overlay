# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.14.0

inherit perl-module

S=${WORKDIR}/UNIVERSAL-can-1.12

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=${PN}"
SRC_URI="mirror://cpan/authors/id/C/CH/CHROMATIC/UNIVERSAL-can-1.12.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="
	>=virtual/perl-Scalar-List-Utils-1.19
	>=virtual/perl-Test-Simple-0.86
"
RDEPEND="${DEPEND}"
