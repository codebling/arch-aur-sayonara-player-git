#Dockerfile to create an additonal stage/layer so we don't have to 
# continuously reinstall the deps when building several times in a row

FROM whynothugo/makepkg

#copy the pkgbuild so we can get and install
COPY PKGBUILD /pkg

# install the deps. This line directly from whynothugo/makepkg
RUN yay -Sy --noconfirm \
    $(pacman --deptest $(source ./PKGBUILD && echo ${depends[@]} ${makedepends[@]}))
