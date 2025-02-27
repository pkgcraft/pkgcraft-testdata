EAPI=8

DESCRIPTION="Ebuild with command in invalid scope"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

src_compile() {
	emake program
	dobin program
}
