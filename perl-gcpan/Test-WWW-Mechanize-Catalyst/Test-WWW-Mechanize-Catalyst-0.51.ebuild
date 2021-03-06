# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Test-WWW-Mechanize-Catalyst-0.51

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=Test-WWW-Mechanize-Catalyst&mode=dist"
SRC_URI="mirror://cpan/authors/id/A/AS/ASH/Test-WWW-Mechanize-Catalyst-0.51.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/Test-Exception
	>=dev-perl/WWW-Mechanize-1.54
	>=dev-perl/namespace-clean-0.11
	perl-gcpan/Catalyst-Plugin-Session-State-Cookie
	>=perl-gcpan/Catalyst-Runtime-5.80002
	perl-gcpan/Catalyst-Plugin-Session
	>=dev-perl/Test-WWW-Mechanize-1.24
	dev-perl/Moose
	dev-perl/libwww-perl
	dev-lang/perl"
