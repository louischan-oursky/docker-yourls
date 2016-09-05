#!/bin/sh

# for testing purpose only

docker run \
--name yourls \
--link village-ant-db \
-p 18080:80 \
-e DB_HOST='village-ant-db' \
-e DB_USER='yourls' \
-e DB_PASSWORD='mysecretpassword' \
-e DB_NAME='yourls' \
-e FQDN='192.168.99.100:18080' \
-e YOURL_USER='admin' \
-e YOURL_PASSWORD='mysecretpassword' \
-e YOURLS_SITE='http://192.168.99.100:18080' \
-d \
yourls
