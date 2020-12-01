FROM java:8u111-jre-alpine
MAINTAINER "bane" <fengxiaotx@163.com>

RUN mkdir /workspace
RUN apk update
RUN apk upgrade
RUN apk add bash

COPY ./hbase-2.3.3 /workspace/hbase

EXPOSE 80 2181 60010
ENTRYPOINT ["sh","-c","/workspace/hbase/bin/start-hbase.sh && tail -f /dev/null" ]