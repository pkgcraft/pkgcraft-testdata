# stub eclass

# non-incrementals
HOMEPAGE+=" https://github.com/pkgcraft/a"
SRC_URI+=" https://github.com/pkgcraft/a.tar.xz"

# incrementals
IUSE="global eclass a"
REQUIRED_USE="global eclass a"
BDEPEND="cat/pkg eclass/pkg a/pkg"
DEPEND="cat/pkg eclass/pkg a/pkg"
IDEPEND="cat/pkg eclass/pkg a/pkg"
PDEPEND="cat/pkg eclass/pkg a/pkg"
RDEPEND="cat/pkg eclass/pkg a/pkg"
