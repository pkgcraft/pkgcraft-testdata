EAPI=0
EAPIS_SUPPORTED=..4

DESCRIPTION="test RDEPEND=DEPEND fallback support"
SLOT=0
DEPEND="a/b"

src_test() {
	[[ ${RDEPEND} == ${DEPEND} ]] || die "EAPI: ${EAPI}: RDEPEND=DEPEND fallback failed"
}
