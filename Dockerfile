FROM gocd/gocd-agent-alpine-3.5:v17.4.0

MAINTAINER durmaze

RUN \
  apk add --no-cache curl && \
  curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz && \
  tar --strip-components=1 -xvzf docker-latest.tgz -C /usr/local/bin && \
  rm -rf docker docker-latest.tgz
