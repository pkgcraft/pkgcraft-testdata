EAPI=8

DESCRIPTION="Ebuild that uses builtins as external commands"
HOMEPAGE="https://pkgcraft.pkgcraft"
LICENSE="MIT"
SLOT="0"

src_install() {
	find "${S}/man" -name '*.1' -exec doman '{}' + || die

	for f in ${A}; do
		[[ ${f} == *.rtb[wz] ]] && echo "${DISTDIR}"/${f}
	done | xargs doins
}
