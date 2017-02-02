#Download the base image Ubuntu 16.04
FROM ubuntu:16.04

#Update Software repo
RUN apt-get update

#Installing Logstash 5.1.2
RUN apt-get install -y curl openjdk-8-jre

RUN curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-5.1.2.tar.gz
RUN curl -L -O https://artifacts.elastic.co/downloads/kibana/kibana-5.1.2-linux-x86_64.tar.gz
RUN tar xzvf kibana-5.1.2-linux-x86_64.tar.gz -C /opt/
RUN tar -xf logstash-5.1.2.tar.gz -C /opt/

COPY run.sh /opt/

RUN chmod +x /opt/run.sh
CMD  /opt/run.sh

EXPOSE 5601 5044
