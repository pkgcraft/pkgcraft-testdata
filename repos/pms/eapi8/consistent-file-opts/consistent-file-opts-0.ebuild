EAPI=0
EAPIS_SUPPORTED=8..

DESCRIPTION="test insopts/exeopts consistency for install functions"
SLOT=0

src_install() {
	touch file

	insopts -m0777
	doconfd file
	doenvd file
	has ${EAPI} ${SUPPORTED_EAPIS} && doheader file

	exeopts -m0777
	doinitd file
}

FILES_PASS='
[[files]]
path = "/etc/conf.d/file"
mode = 0o100644
[[files]]
path = "/etc/env.d/file"
mode = 0o100644
[[files]]
path = "/etc/init.d/file"
mode = 0o100755
[[files]]
path = "/usr/include/file"
mode = 0o100644
'

FILES_FAIL='
[[files]]
path = "/etc/conf.d/file"
mode = 0o100777
[[files]]
path = "/etc/env.d/file"
mode = 0o100777
[[files]]
path = "/etc/init.d/file"
mode = 0o100777
'
