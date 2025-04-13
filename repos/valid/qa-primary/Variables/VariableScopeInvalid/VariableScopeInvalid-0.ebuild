EAPI=8

DESCRIPTION="Ebuild with EAPI variables in invalid scope"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

VAR1="${EROOT}/usr/share/doc/${PF}/file"

src_compile() {
	emake INSTALL_PATH="${ED}"/usr
}
