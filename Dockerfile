#
# Redis Dockerfile
# Contains basic configuration, with site-specific stuff on the volumes
#

FROM colinrhodes/base

MAINTAINER Colin Rhodes <colin@colin-rhodes.com>

ADD http://download.redis.io/releases/redis-stable.tar.gz /opt/redis.tgz
RUN tar -xzf /opt/redis.tgz -C opt && rm /opt/redis.tgz

VOLUME /data/redis
WORKDIR /data/redis

EXPOSE 6379

ENTRYPOINT /opt/redis-stable/bin/redis-server
