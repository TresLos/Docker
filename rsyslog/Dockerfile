FROM alpine

RUN apk add --no-cache \
	autoconf \
	automake \
	build-base \
	libtool

WORKDIR /root
COPY manual_instalation.sh .

RUN ./manual_instalation.sh \
	http://libestr.adiscon.com/files/download/libestr-0.1.10.tar.gz \
	http://www.libee.org/files/download/libee-0.4.1.tar.gz \
	http://download.rsyslog.com/liblogging/liblogging-1.0.6.tar.gz \
	http://download.rsyslog.com/libfastjson/libfastjson-0.99.8.tar.gz

# ENTRYPOINT tail -f /dev/null
ENTRYPOINT sh
