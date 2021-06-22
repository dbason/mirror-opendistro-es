#!/bin/bash
set -e

cp /usr/share/elasticsearch/config/elasticsearch.yml TMP_CONF_DIR
ES_PATH_CONF=$TMP_CONF_DIR /usr/share/elasticsearch/bin/elasticsearch-keystore create
echo $AWS_ACCESS_KEY | ES_PATH_CONF=$TMP_CONF_DIR /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.access_key
echo $AWS_SECRET_KEY | ES_PATH_CONF=$TMP_CONF_DIR /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.secret_key