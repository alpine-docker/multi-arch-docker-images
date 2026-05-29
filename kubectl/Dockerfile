FROM alpine

RUN apk add --update --no-cache curl envsubst

# Install kubectl
RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) ARCH=amd64 ;; \
        aarch64) ARCH=arm64 ;; \
        armv7l) ARCH=arm ;; \
        s390x) ARCH=s390x ;; \
        ppc64le) ARCH=ppc64le ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    KUBECTL_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt) && \
    curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/${ARCH}/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/kubectl"]
CMD ["--help"]
