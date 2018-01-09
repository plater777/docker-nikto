FROM debian:stable-slim

MAINTAINER Santiago Platero (https://github.com/plater777)

RUN apt-get update && \
  apt-get install -y nikto && \
  apt-get autoclean

ENTRYPOINT ["nikto"]

CMD ["--help"]