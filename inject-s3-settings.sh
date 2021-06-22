#!/bin/bash
set -e

cp /usr/share/elasticsearch/config/elasticsearch.yml $ES_PATH_CONF
/usr/share/elasticsearch/bin/elasticsearch-keystore create
echo $AWS_ACCESS_KEY | /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.access_key
echo $AWS_SECRET_KEY | /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.secret_key