TERMUX_PKG_HOMEPAGE=https://github.com/rui314/mold
TERMUX_PKG_DESCRIPTION="mold: A Modern Linker"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.2.0"
TERMUX_PKG_SRCURL=https://github.com/rui314/mold/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=78ddddaaa004e50f8d92a13d8e792a46a1b37745fab48d39ad16aeb5a776e7c6
TERMUX_PKG_DEPENDS="libandroid-spawn, libc++, openssl, zlib"
TERMUX_PKG_AUTO_UPDATE=true

# dont depend on system libtbb, xxhash
# https://github.com/rui314/mold/commit/add94b86266b40bc66789e26358675da9d603919#commitcomment-80494077
