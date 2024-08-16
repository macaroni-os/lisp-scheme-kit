# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Guile bindings of libgcrypt"
HOMEPAGE="https://notabug.org/cwebber/guile-gcrypt"
SRC_URI="https://notabug.org/cwebber/guile-gcrypt/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-scheme/guile-2.0.11:=
	dev-libs/libgcrypt:0=
"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${PN}

src_prepare() {
	default

	# upstream tag on top of source tree. has no autogenerated files
	eautoreconf
}
