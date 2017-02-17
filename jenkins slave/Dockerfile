FROM oraclelinux:7.3

ENV JENKINS_SWARM_VERSION 2.2

ADD swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar /

RUN yum update -y

RUN yum install -y java-1.8.0-openjdk

ADD jenkins-slave.sh /

RUN chmod 755 /jenkins-slave.sh

CMD bash
ENTRYPOINT /jenkins-slave.sh

