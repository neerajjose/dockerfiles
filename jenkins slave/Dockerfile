FROM oraclelinux:7.3

ENV JENKINS_SWARM_VERSION 2.2

RUN yum install -q -y unzip 

ADD swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar /

RUN useradd -c "Jenkins Slave user" -u 1000 -d $HOME -m jenkins-slave \
&& chmod a+r /swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar \
&& /usr/sbin/groupadd docker \
&& usermod -a -G docker jenkins-slave


RUN yum update -y

RUN yum install -y \
docker \
gcc-c++ \
git \
make \
nodejs \
sudo \
tar \
java-1.8.0-openjdk

ADD jenkins-slave.sh /

RUN chmod 755 /jenkins-slave.sh

RUN echo "root:jslaverootpassword" | chpasswd
RUN echo "jenkins-slave:jspassword" | chpasswd
USER jenkins-slave

CMD ["bash"]
#ENTRYPOINT [ "/jenkins-slave.sh" ]
