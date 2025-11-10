FROM frolvlad/alpine-glibc

# https://www.mongodb.com/try/download/shell
ARG MONGOSH_VERSION=2.5.9

RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=x64 ;; \
        aarch64) ARCH=arm64 ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    apk add --no-cache mongodb-tools tar libgcc bash && \
    wget -O- https://github.com/mongodb-js/mongosh/releases/download/v${MONGOSH_VERSION}/mongosh-${MONGOSH_VERSION}-linux-${ARCH}.tgz \
    | tar -xz --strip-components=2 -C /usr/local/bin --wildcards '*/bin/*' && \
    mv /usr/local/bin/*.so* /usr/glibc-compat/lib/ && \
    # Disable mongosh telemetry
    mongosh --nodb --eval "disableTelemetry()"

ENTRYPOINT ["mongosh"]
