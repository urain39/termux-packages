TERMUX_PKG_HOMEPAGE=https://github.com/dalance/procs
TERMUX_PKG_DESCRIPTION="A modern replacement for ps"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.14.1"
TERMUX_PKG_SRCURL=https://github.com/dalance/procs/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=bb4f9d696081807ca105593092f8acd04ca339ae43fff29e0e820c6fc5e3f9ea
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

# This package contains makefiles to run the tests. So, we need to override build steps.
termux_step_make() {
	termux_setup_rust
	cargo build --jobs $TERMUX_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/procs
}
