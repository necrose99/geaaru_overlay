# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/HTTP-Request-AsCGI-0.9

DESCRIPTION="Setup a CGI enviroment from a HTTP::Request"
HOMEPAGE="http://search.cpan.org/search?query=HTTP-Request-AsCGI&mode=dist"
SRC_URI="mirror://cpan/authors/id/H/HD/HDP/HTTP-Request-AsCGI-0.9.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="dev-perl/libwww-perl
	dev-perl/URI
	dev-perl/Class-Accessor
	dev-lang/perl"
