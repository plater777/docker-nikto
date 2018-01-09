FROM alpine

MAINTAINER Santiago Platero (https://github.com/plater777)

RUN apk update && \
	apk add --no-cache nikto perl-net-ssleay && \
	rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["nikto.pl"]

CMD ["-Help"]