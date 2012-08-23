# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Data-Visitor-0.25

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=Data-Visitor&mode=dist"
SRC_URI="mirror://cpan/authors/id/F/FL/FLORA/Data-Visitor-0.25.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND=">=dev-perl/namespace-clean-0.11
	>=perl-gcpan/Test-MockObject-1.09
	>=perl-gcpan/Any-Moose-0.10
	>=perl-gcpan/Tie-ToObject-0.03
	dev-perl/Test-use-ok
	dev-perl/Task-Weaken
	dev-lang/perl"
