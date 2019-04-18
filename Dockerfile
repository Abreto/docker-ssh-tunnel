FROM alpine

LABEL maintainer="Abreto <m@abreto.net>"

RUN apk --update add openssh-client \
    && rm -f /var/cache/apk/*

WORKDIR /app
COPY entrypoint.sh .

ENV SSH_PORT=22
ENV SSH_USER=root
ENV SSH_ID_FILE=/app/conn.pem

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]
