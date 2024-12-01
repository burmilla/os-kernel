FROM buildpack-deps:sid

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        abigail-tools \
        cpio \
        dpkg-dev \
        flex \
        gnupg \
        ccache \
        vim \
        gnupg2 \
        locales \
        bc \
        kmod \
        libelf-dev \
        bison \
        flex \
        u-boot-tools \
        gcc-aarch64-linux-gnu \
        gcc-loongarch64-linux-gnu \
    && rm -f /bin/sh && ln -s /bin/bash /bin/sh \
    && rm -rf /var/lib/apt/lists/*

# Install dapper
RUN curl -sL https://releases.rancher.com/dapper/v0.5.4/dapper-$(uname -s)-$(uname -m | sed 's/arm.*/arm/') > /usr/bin/dapper \
    && chmod +x /usr/bin/dapper

ENV LANG=en_US.UTF-8
RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen \
    && locale-gen
