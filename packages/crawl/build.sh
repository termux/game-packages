TERMUX_PKG_HOMEPAGE=https://crawl.develz.org/
TERMUX_PKG_DESCRIPTION="A roguelike adventure through dungeons filled with dangerous monsters in a quest to find the mystifyingly fabulous Orb of Zot."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_SRCURL=https://github.com/crawl/crawl.git
TERMUX_PKG_VERSION=0.25.1
TERMUX_PKG_GIT_BRANCH=0.25.1
TERMUX_PKG_DEPENDS="ncurses, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	export LIBS="-llog"
	export CROSSHOST="$TERMUX_HOST_PLATFORM"
	export TERMUX_PKG_BUILDDIR="$TERMUX_PKG_SRCDIR/crawl-ref/source"
}

termux_step_post_configure() {
	sed -i 's,#ifdef __ANDROID__,#ifndef __ANDROID__,g' "$TERMUX_PKG_BUILDDIR/syscalls.cc"
}
