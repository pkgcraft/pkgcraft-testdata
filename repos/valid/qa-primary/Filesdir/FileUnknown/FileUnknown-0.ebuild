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

# invalid references in strings are flagged
FILE1="file1:${FILESDIR}/nonexistent"
FILE2="file2:${FILESDIR}/existent"

src_prepare() {
	default
	local f="file"

	# local variables currently aren't supported
	eapply "${FILESDIR}"/${f}.patch
	# global variables using parameter expansion currently aren't supported
	eapply "${FILESDIR}"/${GLOBAL_VAR}.patch
}

src_configure() {
	econf --file1="${FILE1}" --file2="${FILE2}"
}
