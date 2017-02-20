FROM oraclelinux:7.3

ENV JENKINS_SWARM_VERSION 2.2
ENV MASTER_IP localhost
ENV MASTER_PORT 8080
ENV MASTER_USER user
ENV MASTER_PASSWORD password
ENV SLAVE_NAME slave

ADD swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar /

RUN yum update -y

RUN yum install -y java-1.8.0-openjdk

ADD jenkins-slave.sh /

RUN chmod 755 /jenkins-slave.sh

#CMD bash
CMD ["sh", "/jenkins-slave.sh", "${MASTER_IP}", "${MASTER_PORT}", "${MASTER_USER}", "${MASTER_PASSWORD}", "${SLAVE_NAME}"]


