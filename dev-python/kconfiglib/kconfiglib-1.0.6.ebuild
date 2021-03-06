# Copyright 2017 Jan Chren (rindeal)
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit rindeal

GH_RN="github:ulfalizer"
GH_REF="v${PV}"

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

# EXPORT_FUNCTIONS: src_unpack
inherit git-hosting
# functions: eautoreconf
inherit distutils-r1

DESCRIPTION="Flexible Python Kconfig parser and library"
LICENSE="ISC"

SLOT="0"

KEYWORDS="~amd64 ~arm ~arm64"
IUSE_A=( examples )

CDEPEND_A=()
DEPEND_A=( "${CDEPEND_A[@]}" )
RDEPEND_A=( "${CDEPEND_A[@]}" )

inherit arrays

python_install_all() {
	distutils-r1_python_install_all

	use examples && dodoc -r examples
}
