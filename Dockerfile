# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/UTC"
RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential curl
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash
RUN apt-get update && apt-get install -y nodejs
RUN corepack enable
RUN yarn global add @quasar/cli && yarn create quasar
WORKDIR /build
ENTRYPOINT ["quasar"]
