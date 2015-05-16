FROM ubuntu:precise
MAINTAINER cristian.arroyo@vivaserver.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get -qq install locales
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales && /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

# ensure access to PPA repos, killer Ubuntu feature
RUN apt-get -qq install apt-utils
RUN apt-get -qq install python-software-properties
RUN apt-get -qq autoclean
