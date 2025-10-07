# SPDX-FileCopyrightText: © 2025 Nfrastack <code@nfrastack.com>
#
# SPDX-License-Identifier: MIT

ARG \
    BASE_IMAGE

FROM ${BASE_IMAGE}

LABEL \
        org.opencontainers.image.title="Matomo" \
        org.opencontainers.image.description="Web analytics platform" \
        org.opencontainers.image.url="https://hub.docker.com/r/nfrastack/matomo" \
        org.opencontainers.image.documentation="https://github.com/nfrastack/container-matomo/blob/main/README.md" \
        org.opencontainers.image.source="https://github.com/nfrastack/container-matomo.git" \
        org.opencontainers.image.authors="Nfrastack <code@nfrastack.com>" \
        org.opencontainers.image.vendor="Nfrastack <https://www.nfrastack.com>" \
        org.opencontainers.image.licenses="MIT"

COPY CHANGELOG.md /usr/src/container/CHANGELOG.md
COPY LICENSE /usr/src/container/LICENSE
COPY README.md /usr/src/container/README.md

ENV \
    CRON_PERIOD=60 \
    NGINX_SITE_ENABLED=matomo \
    PHP_MODULE_ENABLE_CREATE_SAMPLE_PHP=FALSE \
    PHP_MODULE_ENABLE_DOM=TRUE \
    PHP_MODULE_ENABLE_ICONV=TRUE \
    PHP_MODULE_ENABLE_IGBINARY=TRUE \
    PHP_MODULE_ENABLE_LDAP=TRUE \
    PHP_MODULE_ENABLE_PDO=TRUE \
    PHP_MODULE_ENABLE_PDO_MYSQL=TRUE \
    PHP_MODULE_ENABLE_MYSQLND=TRUE \
    PHP_MODULE_ENABLE_REDIS=TRUE \
    PHP_MODULE_ENABLE_SIMPLEXML=TRUE \
    PHP_MODULE_ENABLE_XML=TRUE \
    PHP_MODULE_ENABLE_XMLREADER=TRUE \
    IMAGE_NAME=nfrastack/matomo \
    IMAGE_REPO_URL=https://github.com/nfrastack/container-matomo

RUN echo "" && \
    source /container/base/functions/container/build && \
    container_build_log image && \
    package update && \
    package upgrade && \
    php-ext prepare && \
    php-ext reset && \
    php-ext enable core && \
    package cleanup

COPY rootfs /
