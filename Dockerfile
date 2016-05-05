# Pull base image
FROM elasticsearch:2.3

# Install AWS plugin
RUN /usr/share/elasticsearch/bin/plugin install cloud-aws
 
# Install Marvel plugin
RUN /usr/share/elasticsearch/bin/plugin install license
RUN /usr/share/elasticsearch/bin/plugin install marvel-agent

# Add default config file
ADD elasticsearch.yml /usr/share/elasticsearch/config/