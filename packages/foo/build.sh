TERMUX_PKG_HOMEPAGE=https://foo
TERMUX_PKG_DESCRIPTION="dummy package for testing subpackage handling by github action scripts"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=28
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/termux/libandroid-support/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=ef35260994ffa3bd054be66068dfc28934c823ac8de2394796d94d1cd5de3be4

termux_step_post_get_source() {
	echo 1 > $TERMUX_PREFIX/etc/foo
	echo 2 > $TERMUX_PREFIX/etc/bar
	echo 3 > $TERMUX_PREFIX/etc/baz
}
