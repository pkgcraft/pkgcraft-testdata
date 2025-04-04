EAPI=8

GLOBAL_VAR=${PN/_/}
DESCRIPTION="Ebuild with unknown FILESDIR path"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

PATCHES=(
	"${FILESDIR}"/existent.patch
	"${FILESDIR}"/nonexistent.patch
)

src_prepare() {
	default
	local f="file"

	# local variables currently aren't supported
	eapply "${FILESDIR}"/${f}.patch
	# global variables using parameter expansion currently aren't supported
	eapply "${FILESDIR}"/${GLOBAL_VAR}.patch
}
