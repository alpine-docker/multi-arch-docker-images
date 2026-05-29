ARG ALPINE_VERSION="3.23"
ARG VERSION="latest"


FROM "node:lts-alpine${ALPINE_VERSION}" AS builder

ARG VERSION

WORKDIR /opt/mongosh

RUN \
    apk add --no-cache python3 make g++ \
    && wget -qO- https://gobinaries.com/tj/node-prune | sh \
    && npm --no-update-notifier --silent view "mongosh@${VERSION}" dist.tarball | xargs wget -qO- | tar -xz --strip-components=1 \
    && npm install --no-update-notifier --omit=dev --no-audit --no-fund \
    && node-prune ./node_modules/ 


FROM "alpine:${ALPINE_VERSION}"

COPY --from=builder /opt/mongosh/ /opt/mongosh/
COPY --from=builder /usr/local/bin/node /usr/local/bin/

RUN \ 
    apk add --no-cache libstdc++ mongodb-tools \
    && ln -s /opt/mongosh/bin/mongosh.js /usr/local/bin/mongosh 

ENTRYPOINT []
