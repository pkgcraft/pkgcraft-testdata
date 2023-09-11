EAPI=0
EAPIS_SUPPORTED=..4

DESCRIPTION="RDEPEND=DEPEND fallback support"
SLOT=0
DEPEND="a/b"

src_test() {
	[[ ${RDEPEND} == ${DEPEND} ]] || die "EAPI: ${EAPI}: failed: ${DESCRIPTION}"
}
