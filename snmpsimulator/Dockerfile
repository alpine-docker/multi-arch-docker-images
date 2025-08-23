# Stage 1: Build with dependencies
FROM python:3.12-alpine AS builder

# Install system dependencies and build tools
RUN apk add --no-cache \
    net-snmp-tools \
    gcc \
    musl-dev \
    python3-dev \
    libffi-dev \
    openssl-dev \
    build-base \
    cargo \
    rust

# Set environment variables to help pip find Rust
ENV CARGO_HOME=/usr/local/cargo \
    RUSTUP_HOME=/usr/local/rustup \
    PATH=$PATH:/usr/local/cargo/bin

# Install snmpsim
RUN pip install --no-cache-dir snmpsim

# Stage 2: Final image
FROM python:3.12-alpine

RUN apk add --no-cache net-snmp-tools

COPY --from=builder /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
COPY --from=builder /usr/local/bin/snmpsim* /usr/local/bin/

RUN ln -s /usr/local/bin/snmpsim-command-responder /usr/local/bin/snmpsimd

RUN addgroup -S snmp && adduser -S snmp -G snmp

RUN mkdir -p /var/snmpsim/data \
    && cp -r $(python -c "import snmpsim; import os; print(os.path.join(os.path.dirname(snmpsim.__file__), 'data'))")/* /var/snmpsim/data/

EXPOSE 1161/udp
USER snmp
CMD ["snmpsimd", "--agent-udpv4-endpoint=0.0.0.0:1161", "--data-dir=/var/snmpsim/data"]

