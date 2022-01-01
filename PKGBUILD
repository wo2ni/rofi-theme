# Maintainer: BadBoy <luckmelove2@gmail.com>

pkgname='lht-rofi-theme'
pkgver='1.0.0'
pkgrel='1'
pkgdesc='Made by LHt rofi config'
arch=('any')
#install="${pkgname}.install"
license=('GPL3')
depends=('rofi')
source=('lht-rofi-theme.tar.bz2'
)

sha256sums=('SKIP'
)

package() {
    msg 'This Private rofi config'
    #cd ${pkgname}
    install -dm755 "${pkgdir}/usr/share/rofi/${pkgname}"
    install -Dm644 "${srcdir}/${pkgname}"/*rasi "${pkgdir}"/usr/share/rofi/"${pkgname}"
    install -Dm666 "${srcdir}/${pkgname}"/.*rasi "${pkgdir}"/usr/share/rofi/"${pkgname}"

    install -dm755 "${pkgdir}"/usr/bin
    install -Dm755 "${srcdir}/${pkgname}"/*sh "${pkgdir}"/usr/bin/lht-rofi
}
