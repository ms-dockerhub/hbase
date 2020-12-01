#!/usr/bin/env bash

docker build -f Dockerfile --force-rm=true --rm -t hbase:2.3.3 .