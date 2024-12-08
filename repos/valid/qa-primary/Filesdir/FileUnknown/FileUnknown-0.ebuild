EAPI=8

DESCRIPTION="Ebuild with unknown FILESDIR path"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

PATCHES=(
	"${FILESDIR}"/existent.patch
	"${FILESDIR}"/nonexistent.patch
)
