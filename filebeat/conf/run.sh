#!/bin/bash

/filebeat-5.2.0-linux-x86_64/filebeat -configtest -path.config /opt/conf/
/filebeat-5.2.0-linux-x86_64/filebeat -path.config /opt/conf/
