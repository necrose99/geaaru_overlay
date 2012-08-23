# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Catalyst-Devel-1.20

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=Catalyst-Devel&mode=dist"
SRC_URI="mirror://cpan/authors/id/F/FL/FLORA/Catalyst-Devel-1.20.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="virtual/perl-parent
	perl-gcpan/Catalyst-Plugin-Static-Simple
	perl-gcpan/Catalyst-Plugin-ConfigLoader
	>=dev-perl/Template-Toolkit-2.22
	dev-perl/Class-Accessor
	>=dev-perl/Module-Install-0.91
	perl-gcpan/Catalyst-Action-RenderView
	>=perl-gcpan/File-ChangeNotify-0.07
	dev-perl/config-general
	>=perl-gcpan/Catalyst-Runtime-5.80011
	dev-perl/File-Copy-Recursive
	dev-perl/Path-Class
	dev-lang/perl"
