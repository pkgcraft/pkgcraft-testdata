EAPI=8
inherit a
DESCRIPTION="ebuild with direct eclass inherit"
SLOT=0
LICENSE="l1"

# incrementals
IUSE="global ebuild"
REQUIRED_USE="global ebuild"
BDEPEND="cat/pkg ebuild/pkg"
DEPEND="cat/pkg ebuild/pkg"
IDEPEND="cat/pkg ebuild/pkg"
PDEPEND="cat/pkg ebuild/pkg"
RDEPEND="cat/pkg ebuild/pkg"
