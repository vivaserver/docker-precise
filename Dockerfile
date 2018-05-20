FROM ubuntu:precise
MAINTAINER cristian.arroyo@vivaserver.com

ENV DEBIAN_FRONTEND noninteractive

# ensure access to PPA repos, killer Ubuntu feature
RUN apt-get -qq update && apt-get -qq install locales apt-utils python-software-properties && apt-get -qq autoclean && rm -f /var/lib/apt/lists/*_*
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales && /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
