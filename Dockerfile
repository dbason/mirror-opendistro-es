FROM amazon/opendistro-for-elasticsearch:1.13.2

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch repository-s3
COPY ./inject-s3-settings.sh .