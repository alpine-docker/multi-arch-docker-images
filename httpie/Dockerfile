FROM python:3-alpine

RUN apk add build-base python3-dev && \
  python -m pip install --upgrade pip wheel && \
  python -m pip install httpie && \
  apk del build-base python3-dev

ENTRYPOINT [ "http" ]
CMD ["--help"]
