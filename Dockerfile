FROM ubuntu:18.04
MAINTAINER Ahn Yeri <ye0108@naver.com>

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 # install Apache web server (Only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # For installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# Connect PHP & MySQL

RUN apt-get install -y php5.6-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]