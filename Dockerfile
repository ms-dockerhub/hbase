FROM java:8u111-jre-alpine
MAINTAINER "bane" <fengxiaotx@163.com>

RUN mkdir -p /data/hbase
RUN mkdir /workspace
RUN apk update
RUN apk upgrade
RUN apk add bash

COPY ./hbase-2.3.3 /workspace/hbase
COPY ./apache-zookeeper-3.6.2-bin /workspace/zookeeper
COPY ./start.sh /workspace/start.sh

RUN chmod 777 /workspace/start.sh

EXPOSE 80 2181 16000 60010
# ENTRYPOINT ["sh","-c","/workspace/hbase/bin/start-hbase.sh && tail -f /dev/null" ]
# CMD ["/bin/sh"]
ENTRYPOINT ["sh","-c","/workspace/start.sh && tail -f /dev/null" ]