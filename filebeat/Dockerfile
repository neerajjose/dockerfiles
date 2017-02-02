#Download the base image Ubuntu 16.04
FROM ubuntu:16.04

#Update Software repo
RUN apt-get update

#Installing filebeat 5.2
RUN apt-get install -y curl
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.1.2-amd64.deb
RUN dpkg -i filebeat-5.1.2-amd64.deb

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY run.sh /opt/
RUN chmod +x /opt/run.sh

CMD /opt/run.sh
