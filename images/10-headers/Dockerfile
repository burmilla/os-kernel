# loongarch overrides this with an imported Alpine minirootfs
ARG ALPINE_IMAGE=alpine:3.22
FROM ${ALPINE_IMAGE}
# FROM arm64=arm64v8/alpine:3.22 arm=skip
RUN apk --purge --no-cache add kmod bash

ARG KERNEL_VERSION
ENV KERNEL_VERSION=${KERNEL_VERSION}

COPY headers.sh  /
COPY /build.tar.gz /
CMD ["/headers.sh"]
