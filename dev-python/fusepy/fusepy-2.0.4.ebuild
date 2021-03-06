# Copyright 2016-2017 Jan Chren (rindeal)
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit rindeal

GH_RN="github:terencehonles"
GH_REF="v${PV}"

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit git-hosting
inherit distutils-r1

DESCRIPTION="Simple ctypes python bindings for FUSE"
LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64 ~arm ~arm64"

CDEPEND_A=(
	">=sys-fs/fuse-2.6:0"
)
DEPEND_A=( "${CDEPEND_A[@]}"
	"dev-python/setuptools[${PYTHON_USEDEP}]"
)
RDEPEND_A=( "${CDEPEND_A[@]}"
	# collision in `fuse.py` file
	"!dev-python/fuse-python[${PYTHON_USEDEP}]"
)

inherit arrays
