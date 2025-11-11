FROM chainguard/wolfi-base

ARG VERSION

RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=x64 ;; \
        aarch64) ARCH=arm64 ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    apk add --no-cache wget mongo-tools bash && \
    # Version fallback protection
    if [ -z "$VERSION" ] || [ "$VERSION" = "latest" ]; then VERSION=2.5.9; fi && \
    wget -nv -O /tmp/mongosh.tgz https://github.com/mongodb-js/mongosh/releases/download/v${VERSION}/mongosh-${VERSION}-linux-${ARCH}.tgz && \
    mkdir -p /usr/local/bin && \
    tar -xzf /tmp/mongosh.tgz --strip-components=2 -C /usr/local/bin && \
    mv /usr/local/bin/*.so* /usr/local/lib/ && \
    rm -f /tmp/* && \
    # Disable mongosh telemetry
    mongosh --nodb --eval "disableTelemetry()"

ENTRYPOINT ["mongosh"]
