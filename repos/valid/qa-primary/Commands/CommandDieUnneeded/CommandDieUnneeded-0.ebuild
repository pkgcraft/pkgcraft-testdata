EAPI=8

DESCRIPTION="Ebuild with EAPI commands that explicitly die"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

src_configure() {
	econf --foo || die
}

src_compile() {
	emake foo || die
}
