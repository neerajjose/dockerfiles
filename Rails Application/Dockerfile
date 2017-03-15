FROM ruby

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
RUN apt-get update -y
RUN echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main">/etc/apt/sources.list.d/passenger.list
RUN chown root: /etc/apt/sources.list.d/passenger.list
RUN chmod 600 /etc/apt/sources.list.d/passenger.list
RUN apt-get install apache2 libapache2-mod-passenger -y

COPY ./rtest/ /usr/share/app
WORKDIR /usr/share/app
COPY ./testapp.conf /etc/apache2/sites-available/testapp.conf
RUN a2dissite 000-default
RUN a2ensite testapp

RUN bundle install
RUN rails db:create
RUN rails db:migrate

CMD ["./script.sh"]
