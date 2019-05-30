FROM zwffff/redis

MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-25

ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379" ]
