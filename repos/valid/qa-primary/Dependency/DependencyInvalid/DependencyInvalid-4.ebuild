EAPI=8

DESCRIPTION="Ebuild with conditional use deps lacking IUSE"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
DEPEND="stub/pkg[u1?]"
RDEPEND="stub/pkg[!u2?]"
