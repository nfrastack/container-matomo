# SPDX-FileCopyrightText: © 2026 Nfrastack <code@nfrastack.com>
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
    IMAGE_NAME=nfrastack/matomo \
    IMAGE_REPO_URL=https://github.com/nfrastack/container-matomo

RUN echo "" && \
    BUILD_ENV=" \
                    10-nginx/NGINX_SITE_ENABLED=matomo \
                    20-php-fpm/PHP_CREATE_SAMPLE_PHP=FALSE \
                    20-php-fpm/PHP_MODULE_ENABLE_DOM=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_ICONV=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_IGBINARY=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_LDAP=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_PDO=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_PDO_MYSQL=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_MYSQLND=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_REDIS=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_SIMPLEXML=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_XML=TRUE \
                    20-php-fpm/PHP_MODULE_ENABLE_XMLREADER=TRUE \
                    20-php-fpm/PHP_MODULE_OPCACHE_JIT_BUFFER_SIZE=0 \
               " && \
    source /container/base/functions/container/build && \
    container_build_log image && \
    package update && \
    package upgrade && \
    php-ext prepare && \
    php-ext reset && \
    package cleanup

COPY rootfs /
