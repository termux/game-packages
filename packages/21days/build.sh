TERMUX_PKG_HOMEPAGE=http://github.com/aristarh2704/21days/
TERMUX_PKG_DESCRIPTION="Game for programmers, only on Russian"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL=https://github.com/aristarh2704/21days/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=b25568600bba95e687b104b46f4b254854507bfc4447b562bcfc76f7af63b071
TERMUX_PKG_DEPENDS=""
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make_install () {                             
	cp bin/21days /data/data/com.termux/files/usr/bin
}
