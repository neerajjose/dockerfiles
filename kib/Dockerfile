#Download the base image Ubuntu 16.04
FROM ubuntu:16.04

#Update Software repo
RUN apt-get update
RUN apt-get install -y curl openjdk-8-jre
RUN curl -L -O https://artifacts.elastic.co/downloads/kibana/kibana-5.1.2-linux-x86_64.tar.gz
RUN tar xzvf kibana-5.1.2-linux-x86_64.tar.gz -C /opt/

COPY kibana.yml /opt/kibana-5.1.2-linux-x86_64/config

CMD /opt/kibana-5.1.2-linux-x86_64/bin/kibana

EXPOSE 5601
