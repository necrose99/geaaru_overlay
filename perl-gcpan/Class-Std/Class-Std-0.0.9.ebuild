# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.14.0

inherit perl-module

S=${WORKDIR}/Class-Std-0.0.9

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=${PN}"
SRC_URI="mirror://cpan/authors/id/D/DM/DMUEY/Class-Std-0.0.9.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="
	virtual/perl-Test-Simple
	virtual/perl-Scalar-List-Utils
	virtual/perl-version
	perl-gcpan/Data-Dumper
"
RDEPEND="${DEPEND}"
