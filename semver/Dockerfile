FROM node:lts-alpine

RUN export PATH=/usr/local/bin:$PATH && \
  npm cache clean --force && \
  npm install -g semver

CMD ["semver", "--help"]
