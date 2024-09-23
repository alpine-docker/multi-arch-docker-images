# Step 1: Build mkcert binary for multiple architectures
FROM --platform=$BUILDPLATFORM golang:1.20-alpine AS builder

# Install dependencies
RUN apk add --no-cache \
    git \
    bash \
    gcc \
    musl-dev

# Set up working directory
WORKDIR /app

# Clone mkcert repository and checkout the latest tag
RUN git clone https://github.com/FiloSottile/mkcert.git . && \
    latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`) && \
    git checkout $latest_tag

# Build mkcert binary based on target architecture
ARG TARGETPLATFORM
RUN go env -w GOOS=linux && \
    if [ "$TARGETPLATFORM" = "linux/arm64" ]; then \
      go env -w GOARCH=arm64; \
    elif [ "$TARGETPLATFORM" = "linux/amd64" ]; then \
      go env -w GOARCH=amd64; \
    fi && \
    go build -ldflags "-X main.Version=$latest_tag" -o mkcert

# Step 2: Create minimal final image with mkcert binary
FROM alpine:latest

# Install nss-tools to manage certificates
RUN apk add --no-cache \
    nss-tools \
    ca-certificates

# Copy mkcert binary from builder stage
COPY --from=builder /app/mkcert /usr/local/bin/mkcert

# Set entrypoint to mkcert
ENTRYPOINT ["mkcert"]
CMD ["--help"]

