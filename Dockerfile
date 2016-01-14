FROM ubuntu:15.10
RUN apt -y install software-properties-common && \
  add-apt-repository -y ppa:saltstack/salt && \
  apt update; \
  apt -y install salt-ssh ssh-client python-git python-msgpack && \
  apt remove software-properties-common && apt-get autoremove && apt-get clean
