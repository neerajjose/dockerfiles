#!/bin/bash

/opt/kibana-5.1.2-linux-x86_64/bin/kibana --config /opt/conf/kibana.yml &
/opt/logstash-5.1.2/bin/logstash -f /opt/conf/logstash.conf 

