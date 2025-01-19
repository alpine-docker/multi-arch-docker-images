FROM node:lts-alpine

ENV NPM_VERSION=10.3.0
RUN npm install -g npm@"${NPM_VERSION}"

RUN export PATH=/usr/local/bin:$PATH && \
  npm install -g semver

CMD ["semver", "--help"]
