FROM base/archlinux

RUN pacman-key --refresh-keys
RUN pacman --noconfirm -Syu
RUN pacman-db-upgrade
RUN pacman --noconfirm -S make sudo

WORKDIR /workbench
