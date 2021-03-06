# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit

DESCRIPTION="An ntegrating Python development in Emacs. Lisp lib"
HOMEPAGE="http://github.com/jorgenschaefer/elpy"
SRC_URI="https://github.com/jorgenschaefer/elpy/archive/${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="amd64 x86"
LICENSE="GPL-3"
SLOT="0"

DEPEND="${RDEPEND}
dev-python/elpy"

src_install() {
	defaults
	insinto /usr/share/emacs/site-lisp/${PN}/
	doins -r ${S}/*.el
	insinto /usr/share/emacs/site-lisp/${PN}/snippets/
	doins -r ${S}/snippets/python-mode
}
