EAPI=8

DESCRIPTION="Ebuild with multiple, nested deprecated dependencies"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="u1 u2 u3"
DEPEND="
	u1? ( stub/deprecated )
	u2? ( >=stub/deprecated-0 )
	u3? ( stub/deprecated )
"
RDEPEND="stub/deprecated"
