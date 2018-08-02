FROM fedora:latest
MAINTAINER Black Hat <bhat@encom.eu.org>

RUN dnf -y update && \
    dnf install -y flatpak-builder ostree fuse elfutils dconf git bzr && \
    dnf clean all

RUN flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo

RUN flatpak install -y flathub org.kde.Platform//5.11 && \
    flatpak install -y flathub org.kde.Sdk//5.11


