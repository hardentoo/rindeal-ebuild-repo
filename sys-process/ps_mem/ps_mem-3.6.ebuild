# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python{2_7,3_{3,4,5}} )

DISTUTILS_SINGLE_IMPL=true

GH_USER='pixelb'
GH_TAG="v${PV}"

inherit github distutils-r1

DESCRIPTION='A utility to accurately report the in core memory usage for a program'
LICENSE='LGPL-2.1'

SLOT='0'

KEYWORDS='~amd64 ~arm ~x86'

python_install_all() {
	doman "${PN}.1"

	distutils-r1_python_install_all
}