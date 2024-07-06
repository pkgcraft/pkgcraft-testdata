EAPI=8

DESCRIPTION="Ebuild with = slot operator in any-of dep"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="u1 u2 u3"
DEPEND="|| ( stub/slotted:0 stub/slotted:1= )"
RDEPEND="
	u1? ( || ( stub/slotted:0 stub/slotted:1= ) )
	u2? ( || ( stub/slotted:0 stub/slotted:1 ) )
	u3? ( || ( stub/slotted:0 stub/slotted:1= ) )
"
