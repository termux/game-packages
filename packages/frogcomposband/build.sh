TERMUX_PKG_HOMEPAGE=https://github.com/sulkasormi/frogcomposband/
TERMUX_PKG_DESCRIPTION="Open world Angband variant with many additions"
TERMUX_PKG_LICENSE="Angband"
TERMUX_PKG_SRCURL=https://github.com/sulkasormi/frogcomposband.git
TERMUX_PKG_VERSION=7.1.salmiak
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-x11 --bindir=$TERMUX_PREFIX/bin --sysconfdir=$TERMUX_PREFIX/share/frogcomposband"
TERMUX_PKG_RM_AFTER_INSTALL="share/angband/xtra share/angband/icons"

termux_step_pre_configure () {
	./autogen.sh
	perl -p -i -e 's|ncursesw5-config|ncursesw6-config|g' configure
}

termux_step_post_make_install () {
	rm -Rf $TERMUX_PREFIX/share/frogcomposband/fonts
}
