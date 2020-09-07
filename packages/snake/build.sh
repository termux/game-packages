TERMUX_PKG_HOMEPAGE=https://github.com/TipzTeam/snake-cpp-termux
TERMUX_PKG_DESCRIPTION="Eat as much as you want while avoiding walls."
TERMUX_PKG_LICENSE=MIT
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_SRCURL=https://github.com/TipzTeam/snake-cpp-termux/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f174e9ef5cd581cbec3748e5d3d0c370dd819858e4126d01cdcb29cff93f6d0b
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_MAINTAINER="Tipz Team @TipzTeam"

termux_step_make_install() {
        install -m755 snake $TERMUX_PREFIX/bin/
}
