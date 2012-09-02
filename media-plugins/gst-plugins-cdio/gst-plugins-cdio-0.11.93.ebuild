# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-cdio/gst-plugins-cdio-0.10.18.ebuild,v 1.5 2011/10/15 18:35:21 xarthisius Exp $

EAPI="4"

inherit gst-plugins-ugly11

KEYWORDS="alpha amd64 ppc ppc64 x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-libs/libcdio-0.80
	>=media-libs/gst-plugins-base-0.11.93
	>=media-libs/gstreamer-0.11.93:0.11"
DEPEND="${RDEPEND}"
