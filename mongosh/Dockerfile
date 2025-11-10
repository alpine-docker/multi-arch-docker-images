FROM frolvlad/alpine-glibc

ARG MONGOSH_VERSION=2.5.9

RUN apk add --no-cache mongodb-tools curl tar libgcc bash && \
    rm -rf /var/cache/apk/*
RUN curl -L https://github.com/mongodb-js/mongosh/releases/download/v${MONGOSH_VERSION}/mongosh-${MONGOSH_VERSION}-linux-x64.tgz \
    | tar -xz --strip-components=2 -C /usr/local/bin --wildcards '*/bin/*'
