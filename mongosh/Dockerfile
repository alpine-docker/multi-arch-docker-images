FROM chainguard/wolfi-base AS base

ARG VERSION

WORKDIR /tmp

RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=x64 ;; \
        aarch64) ARCH=arm64 ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    apk add --no-cache wget jq mongo-tools && \
    # Resolve latest version dynamically
    if [ -z "$VERSION" ] || [ "$VERSION" = "latest" ]; then \
        VERSION=$(wget -qO- https://api.github.com/repos/mongodb-js/mongosh/releases/latest | jq -r '.tag_name | ltrimstr("v")'); \
        echo "VERSION build argument is not set or set to 'latest' — use latest release: $VERSION"; \
    fi && \
    wget -nv --show-progress --progress=bar:force:noscroll https://github.com/mongodb-js/mongosh/releases/download/v${VERSION}/mongosh-${VERSION}-linux-${ARCH}.tgz && \
    tar -xzf mongosh-${VERSION}-linux-${ARCH}.tgz --strip-components=2 && \
    mv mongosh /usr/bin/ && \
    mv *.so* /usr/lib/

FROM chainguard/glibc-dynamic

COPY --from=base /usr/bin/sh /usr/bin/mongo* /usr/bin/
COPY --from=base /usr/lib/ /usr/lib/

# Disable mongosh telemetry
RUN mongosh --nodb --eval "disableTelemetry()"
