~~~~
Run Command : 

docker run -d -p 8080:8080 -p 50000:50000 -v /home/ubuntu/jen/:/var/jenkins_home jenkins
docker run -d -e "MASTER_IP=52.56.166.119" -e "MASTER_PORT=8080" -e "MASTER_USER=neeraj" -e "MASTER_PASSWORD=password" -e "SLAVE_NAME=slave" nj-slave

java -jar swarm-client.jar -help
 -autoDiscoveryAddress VAL      : Use this address for udp-based auto-discovery
                                  (default 255.255.255.255)
 -candidateTag VAL              : Show swarm candidate with tag only
 -deleteExistingClients         : Deletes any existing node with the same name.
 -description VAL               : Description to be put on the slave
 -disableClientsUniqueId        : Disables Clients unique ID.
 -disableSslVerification        : Disables SSL verification in the HttpClient.
 -executors N                   : Number of executors
 -fsroot FILE                   : Directory where Jenkins places files
 -help (--help)                 : Show the help screen
 -labels VAL                    : Whitespace-separated list of labels to be
                                  assigned for this slave. Multiple options are
                                  allowed.
 -master VAL                    : The complete target Jenkins URL like
                                  'http://server:8080/jenkins/'. If this option
                                  is specified, auto-discovery will be skipped
 -mode MODE                     : The mode controlling how Jenkins allocates
                                  jobs to slaves. Can be either 'normal'
                                  (utilize this slave as much as possible) or
                                  'exclusive' (leave this machine for tied jobs
                                  only). Default is normal.
 -name VAL                      : Name of the slave
 -noRetryAfterConnected         : Do not retry if a successful connection gets
                                  closed.
 -password VAL                  : The Jenkins user password
 -passwordEnvVariable VAL       : Environment variable that the password is
                                  stored in
 -retry N                       : Number of retries before giving up. Unlimited
                                  if not specified.
 -showHostName (--showHostName) : Show hostnames instead of IP address
 -t (--toolLocation)            : A tool location to be defined on this slave.
                                  It is specified as 'toolName=location'
 -tunnel VAL                    : Connect to the specified host and port,
                                  instead of connecting directly to Jenkins.
                                  Useful when connection to Hudson needs to be
                                  tunneled. Can be also HOST: or :PORT, in
                                  which case the missing portion will be
                                  auto-configured like the default behavior
 -username VAL                  : The Jenkins username for authentication
 -t (--toolLocation)            : A tool location to be defined on this slave.

~~~~

Taken from https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin
