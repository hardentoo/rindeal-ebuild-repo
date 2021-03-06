# Copyright 2016-2017 Jan Chren (rindeal)
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit rindeal

JBIJ_PN_PRETTY='PyCharm'

DESCRIPTION="${JBIJ_PN_PRETTY} is a Python IDE for professional developers"

JBIJ_URI="python/pycharm-community-${PV}"

JBIJ_DESKTOP_EXTRAS=(
	"MimeType=text/x-python;application/x-python;" # MUST end with semicolon
)

inherit jetbrains-intellij
