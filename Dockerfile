ARG BASE_IMAGE
ARG ARCH
FROM ${BASE_IMAGE:-ghcr.io/organizr/base:2022-03-23_18}-${ARCH:-linux-amd64}

LABEL maintainer="christronyxyocum,Roxedus,MulverineX"

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /


# ports and volumes
EXPOSE 4608
VOLUME /config
