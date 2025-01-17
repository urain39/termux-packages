TERMUX_PKG_HOMEPAGE=https://www.kde.org/
TERMUX_PKG_DESCRIPTION="Framework which lets applications perform actions as a privileged user (KDE)"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="5.110.0"
TERMUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${TERMUX_PKG_VERSION%.*}/kauth-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=e1b357b36f5388ecd96430bb98780d8429d00cccca0a56fc6d3c3f0cb7afd5fb
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase, kcoreaddons"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
