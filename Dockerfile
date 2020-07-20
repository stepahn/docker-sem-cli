FROM alpine:latest

RUN apk add --update \
  bash \
  curl \
  openssh-client \
  sudo \
  && true

RUN curl https://storage.googleapis.com/sem-cli-releases/get.sh | bash

ENTRYPOINT ["sem"]
