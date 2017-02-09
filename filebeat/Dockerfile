#Download the base image Ubuntu 16.04
FROM ubuntu:16.04

#Update Software repo
RUN apt-get update

#Installing filebeat 5.2
RUN apt-get install -y curl
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.2.0-linux-x86_64.tar.gz
RUN tar -xvzf filebeat-5.2.0-linux-x86_64.tar.gz

CMD /opt/conf/run.sh
