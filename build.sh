#!/usr/bin/env bash

docker build -f Dockerfile --force-rm=true --rm -t registry.cn-shanghai.aliyuncs.com/ms-dockerhub/ms.hbase:2.3.3-alpine_1 .