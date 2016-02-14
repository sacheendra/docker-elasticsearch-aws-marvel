# Pull base image
FROM elasticsearch:1.7

# Install AWS plugin
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-cloud-aws/2.7.1
 
# Install Marvel plugin
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/marvel/latest

# Add default config file
ADD elasticsearch.yml /usr/share/elasticsearch/config/