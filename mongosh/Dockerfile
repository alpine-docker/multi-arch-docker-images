FROM chainguard/wolfi-base AS base

ARG VERSION

RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=x64 ;; \
        aarch64) ARCH=arm64 ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    apk add --no-cache wget mongo-tools && \
    # Version fallback protection
    if [ -z "$VERSION" ] || [ "$VERSION" = "latest" ]; then VERSION=2.5.9; fi && \
    wget -nv -O /tmp/mongosh.tgz https://github.com/mongodb-js/mongosh/releases/download/v${VERSION}/mongosh-${VERSION}-linux-${ARCH}.tgz && \
    tar -xzf /tmp/mongosh.tgz --strip-components=2 -C /tmp && \
    mv /tmp/mongosh /usr/bin/ && \
    mv /tmp/*.so* /usr/lib/

FROM chainguard/glibc-dynamic

COPY --from=base /usr/bin/sh /usr/bin/mongo* /usr/bin/
COPY --from=base /usr/lib/ /usr/lib/

# Disable mongosh telemetry
RUN mongosh --nodb --eval "disableTelemetry()"
