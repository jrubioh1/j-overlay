EAPI=8

PYTHON_COMPAT=( python3_{9..13} )

DESCRIPTION="Conversor de páginas Wiki (MediaWiki) a texto limpio."

DISTUTILS_USE_PEP517=poetry
#inherit distutils-r1 git-r3
inherit distutils-r1
SRC_URI="https://github.com/jrubioh1/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/jrubioh1/${PN}"
#EGIT_REPO_URI="https://github.com/jrubioh1/wiki2txT.git"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror" # para que vaya directamente a intranet sin intentar en repo Gentoo

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DISTUTILS_USE_SETUPTOOLS="rdepend"
RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
dev-python/beautifulsoup4
dev-python/plumbum
dev-python/ply
dev-python/soupsieve
dev-python/termcolor
dev-python/tqdm
dev-python/setuptools
"