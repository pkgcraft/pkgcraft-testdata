EAPI=8

DESCRIPTION="Ebuild with invalid optfeature args"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

pkg_postinstall() {
	optfeature "optional support" invalid
	optfeature "nonexistent pkg" nonexistent/pkg
}
