# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/Catalyst-Authentication-Store-DBIx-Class-0.1082

DESCRIPTION="Catalyst Auth storage using DBIx::Class"
HOMEPAGE="http://search.cpan.org/search?query=Catalyst-Authentication-Store-DBIx-Class&mode=dist"
SRC_URI="mirror://cpan/authors/id/J/JA/JAYK/Catalyst-Authentication-Store-DBIx-Class-0.1082.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND=">=perl-gcpan/Catalyst-Model-DBIC-Schema-0.23
	>=perl-gcpan/Catalyst-Plugin-Authentication-0.10011
	perl-gcpan/Catalyst-Runtime
	perl-gcpan/DBIx-Class
	dev-lang/perl"
