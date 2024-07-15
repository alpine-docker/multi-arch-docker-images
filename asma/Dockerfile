# Stage 1: Build the Rust application
FROM rust:alpine as builder

# Install build dependencies
RUN apk add --no-cache musl-dev git

# Set the working directory inside the container
WORKDIR /usr/src

# Clone the source code from GitHub using the specified version (tag)
ARG VERSION=1.0.0
RUN git clone https://github.com/aws/aws-secretsmanager-agent.git && \
    cd aws-secretsmanager-agent && \
    git checkout v$VERSION

# Set the working directory inside the container
WORKDIR /usr/src/aws-secretsmanager-agent

# Build the Rust application
RUN cargo build --release

# Stage 2: Create a smaller image with the built binary
FROM alpine:latest

# Install necessary runtime dependencies
RUN apk --no-cache add ca-certificates

# Set the working directory inside the container
WORKDIR /usr/local/bin

# Copy the binary from the builder stage
COPY --from=builder /usr/src/aws-secretsmanager-agent/target/release/aws_secretsmanager_agent .

# Run the binary by default when the container starts
CMD ["./aws_secretsmanager_agent"]

