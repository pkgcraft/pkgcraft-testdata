EAPI=8

DESCRIPTION="Ebuild with dependency using a subslot with slot operator"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="u1 u2 u3"
DEPEND="
	u1? ( stub/slotted:1/0= )
	u2? ( stub/slotted:0= )
	u3? ( stub/slotted:1/0= )
"
