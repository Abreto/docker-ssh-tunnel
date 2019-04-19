FROM alpine

LABEL maintainer="Abreto <m@abreto.net>"

ENV SSH_PORT=22
ENV SSH_USER=root
ENV SSH_ID_FILE=/app/conn.pem

RUN apk --update add openssh-client \
    && rm -f /var/cache/apk/*

WORKDIR /app
COPY entrypoint.sh .

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]
