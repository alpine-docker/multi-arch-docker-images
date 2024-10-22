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
RUN apk --no-cache add ca-certificates bash acl

# Set the working directory inside the container
WORKDIR /usr/local/bin

# Copy the binary from the builder stage
COPY --from=builder /usr/src/aws-secretsmanager-agent/target/release/aws_secretsmanager_agent secrets-manager-agent
COPY --from=builder /usr/src/aws-secretsmanager-agent/aws_secretsmanager_agent/configuration/awssmaseedtoken .

# Create a group and a user
RUN addgroup -S awssmatokenreader && adduser -S awssmauser -G awssmatokenreader

# Change the ownership of the binary to the created user and group
RUN chown awssmauser:awssmatokenreader /usr/local/bin/secrets-manager-agent

# Create the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN chgrp -R awssmatokenreader /var/run && chmod -R g+rwx /var/run
RUN chgrp -R awssmatokenreader /run && chmod -R g+rwx /run

# Switch to the created user
USER awssmauser

# Set environment variable
ENV AWS_TOKEN=file:///var/run/awssmatoken

# Run the entrypoint script by default when the container starts
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
