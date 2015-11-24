# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
SWORD_MODULE="CzeCEP"

inherit sword-module

DESCRIPTION="Czech Ekumenicky Cesky preklad"
SRC_URI="http://crosswire.org/ftpmirror/pub/sword/packages/rawzip/${SWORD_MODULE}.zip"
HOMEPAGE="http://crosswire.org/sword/modules/ModInfo.jsp?modName=${SWORD_MODULE}"
LICENSE="freedist"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-fbsd"