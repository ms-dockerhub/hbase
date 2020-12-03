#!/usr/bin/env bash
echo "$(sed '2i '"${MY_POD_IP}"' '"${MASTER_HOSTNAME}"'' /etc/hosts)" > /etc/hosts

sed -i 's/MASTER_HOSTNAME/'"${MASTER_HOSTNAME}"'/g' /workspace/hbase/conf/hbase-site.xml