FROM ubuntu:16.04

# Run the wrapper script (to keep the container alive)
COPY daemon.sh /usr/bin/daemon.sh
RUN chmod +x /usr/bin/daemon.sh

# Create the pesudo log file to point to stdout
RUN ln -sf /dev/stdout /var/log/test.log

# Create a cronjob to echo into the logfile just created
#RUN echo '* * * * * root `date` > /var/log/test.log' > /etc/crontab

ENTRYPOINT ["/usr/bin/daemon.sh"]
