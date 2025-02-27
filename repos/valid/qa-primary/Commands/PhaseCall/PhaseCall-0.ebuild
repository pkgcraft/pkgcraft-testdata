EAPI=8

DESCRIPTION="Ebuild that directly calls phase function"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

src_install() {
	src_configure
	dobin program
}
