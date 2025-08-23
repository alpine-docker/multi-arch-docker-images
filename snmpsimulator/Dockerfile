FROM python:3.12-alpine

# Install system dependencies
RUN apk add --no-cache \
      net-snmp-tools \
      bash \
      su-exec \
      shadow \
    && pip install --no-cache-dir snmpsim \
    && ln -s /usr/local/bin/snmpsim-command-responder /usr/local/bin/snmpsimd

# Create snmp user/group
RUN addgroup -S snmp && adduser -S snmp -G snmp

# Add demo datasets
RUN mkdir -p /var/snmpsim/data \
    && cp -r $(python -c "import snmpsim; import os; print(os.path.join(os.path.dirname(snmpsim.__file__), 'data'))")/* /var/snmpsim/data/

# Expose default SNMP port
EXPOSE 1161/udp

# Run as snmp user (safe with snmpsimd)
USER snmp

# Entrypoint
CMD ["snmpsimd", "--agent-udpv4-endpoint=0.0.0.0:1161", "--data-dir=/var/snmpsim/data"]

