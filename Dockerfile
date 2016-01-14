FROM ubuntu:15.10
RUN apt-get update; apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:saltstack/salt && \
  apt-get update; \
  apt-get -y install salt-ssh ssh-client python-git python-msgpack && \
  apt-get -y remove software-properties-common && apt-get -y autoremove && apt-get clean
