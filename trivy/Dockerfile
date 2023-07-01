FROM alpine

RUN apk add --update --no-cache curl

# Ref: https://github.com/aquasecurity/trivy/discussions/4746
# RUN curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -x -s -- -b /usr/local/bin

COPY ./install.sh /tmp/install.sh
RUN cat /tmp/install.sh | sh -x -s -- -b /usr/local/bin

ENTRYPOINT ["/usr/local/bin/trivy"]
CMD ["--help"]
