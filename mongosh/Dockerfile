FROM frolvlad/alpine-glibc

ARG VERSION

RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=x64 ;; \
        aarch64) ARCH=arm64 ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    apk add libgcc mongodb-tools && \
    # Resolve latest version dynamically
    if [ -z "$VERSION" ] || [ "$VERSION" = "latest" ]; then \
        apk add jq; \
        VERSION=$(wget -qO- https://api.github.com/repos/mongodb-js/mongosh/releases/latest | jq -r '.tag_name | ltrimstr("v")'); \
        echo "VERSION build argument is not set or set to 'latest' — use latest release: $VERSION"; \
        apk del jq; \
    fi && \
    wget -qO mongosh.tgz https://github.com/mongodb-js/mongosh/releases/download/v${VERSION}/mongosh-${VERSION}-linux-${ARCH}.tgz && \
    tar -xzf mongosh.tgz --strip-components=2 && \
    mv mongosh /usr/local/bin/ && \
    mv *.so* /usr/glibc-compat/lib/ && \
    rm -rf mongosh.tgz /var/cache/apk/* && \
    # Disable mongosh telemetry
    mongosh --nodb --eval "disableTelemetry()"
