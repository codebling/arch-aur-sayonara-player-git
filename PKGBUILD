# Contributor: Fixed Torres <aur_linuxero@outlook.com>
# Maintainer: Fixed Torres <aur_linuxero@outlook.com>

_pkgname=sayonara-player
pkgname=${_pkgname}-git
pkgver=1.5.1_stable5
pkgrel=1
pkgdesc="A small, clear and fast audio player for Linux written in C++, supported by the Qt framework. It uses Gstreamer as audio backend."
arch=('i686' 'x86_64')
url="http://sayonara-player.com"
license=('GPL3')
depends=('qt5-base' 'taglib' 'gst-plugins-base' 'gst-plugins-good' 'gst-plugins-bad' 'libmtp')
optdepends=('lame' 'gst-plugins-ugly')
makedepends=('cmake' 'qt5-tools')
provides=("${_pkgname}")
conflicts=("${_pkgname}" "${_pkgname}-beta")
source=("git+https://gitlab.com/luciocarreras/"${_pkgname}".git")
sha512sums=('SKIP')

pkgver() {
    cd "$_pkgname"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
    cd "$srcdir/$pkgname"
    mkdir build && cd build
    cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE="Release"
    make
}

package() {
    cd "$srcdir/$pkgname/build"
    make DESTDIR="$pkgdir/" install
}

