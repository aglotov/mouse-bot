FROM ubuntu:xenial

LABEL maintainer="alexander.v.glotov@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
#ENV PYTHONUNBUFFERED=1

#RUN echo "**** install Python ****" && \
#    apk add --no-cache python3 && \
#    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
#    \
#    echo "**** install pip ****" && \
#    python3 -m ensurepip && \
#    rm -r /usr/lib/python*/ensurepip && \
#    pip3 install --no-cache --upgrade pip setuptools wheel && \
#    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#    apk add --no-cache build-base

RUN apt-get update && apt-get install -y dialog apt-utils curl gnupg build-essential
RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -
RUN apt-get install -y nodejs

RUN addgroup -gid 1001 -system node && useradd -u 1001 -g node -ms /bin/bash node

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

CMD [ "node", "index.js" ]