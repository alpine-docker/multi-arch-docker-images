FROM alpine

RUN apk add --update --no-cache curl
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl"]

