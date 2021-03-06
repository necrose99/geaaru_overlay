# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/HTML-FormFu-0.04002

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=HTML-FormFu&mode=dist"
SRC_URI="mirror://cpan/authors/id/C/CF/CFRANKS/HTML-FormFu-0.04002.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND=">=dev-perl/DateTime-0.49
	dev-perl/DateTime-Format-Strptime
	dev-perl/Test-NoWarnings
	>=dev-perl/DateTime-Format-Builder-0.7901
	dev-perl/DateTime-Locale
	dev-perl/libwww-perl
	perl-gcpan/Hash-Flatten
	>=perl-gcpan/Config-Any-0.17
	dev-perl/List-MoreUtils
	perl-gcpan/Regexp-Copy
	dev-perl/Crypt-DES
	>=perl-gcpan/Captcha-reCAPTCHA-0.92
	dev-perl/Date-Calc
	dev-perl/crypt-cbc
	perl-gcpan/Data-Visitor
	dev-perl/HTML-Scrubber
	dev-perl/Email-Valid
	dev-perl/Class-Accessor-Chained
	dev-perl/File-ShareDir
	dev-perl/regexp-common
	dev-perl/Path-Class
	dev-perl/Task-Weaken
	dev-perl/Class-C3
	virtual/perl-Module-Pluggable
	perl-gcpan/DateTime-Format-Natural
	>=dev-perl/HTML-TokeParser-Simple-3.15
	dev-perl/Number-Format
	dev-perl/Template-Toolkit
	>=dev-perl/YAML-Syck-1.07
	dev-perl/Readonly
	dev-lang/perl"
