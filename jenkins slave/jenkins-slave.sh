#!/usr/bin/env bash
java -jar /swarm-client-2.2-jar-with-dependencies.jar -master http://$MASTER_IP:$MASTER_PORT -username $MASTER_USER -password $MASTER_PASSWORD -name $SLAVE_NAME