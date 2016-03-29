FROM gliderlabs/alpine:3.3
MAINTAINER Arnold Bechtoldt <mail@arnoldbechtoldt.com>

#TODO GET RID OF --no-check-certificate !

RUN apk add --no-cache wget && \
  wget --no-check-certificate --progress=dot:giga -O /etcdtool https://github.com/mickep76/etcdtool/releases/download/3.2/etcdtool-3.2-201602171504.linux.x86_64 && \
  chmod +x /etcdtool && \
  apk del wget && \
  apk cache clean

ENTRYPOINT ["/etcdtool"]
