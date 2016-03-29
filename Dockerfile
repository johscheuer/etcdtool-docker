FROM gliderlabs/alpine:3.3
MAINTAINER Arnold Bechtoldt <mail@arnoldbechtoldt.com>

RUN apk add --no-cache wget \
  wget --progress=dot:giga -O /etcdtool https://github.com/mickep76/etcdtool/releases/download/3.2/etcdtool-3.2-201602171504.linux.x86_64 && \
  chmod +x /etcdtool && \
  apk del wget && \
  apk cache clean

ENTRYPOINT ["/etcdtool"]
