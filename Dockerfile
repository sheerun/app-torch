FROM nimbix/base-ubuntu-nvidia
MAINTAINER Nimbix, Inc.

USER root
ADD ./scripts /usr/local/scripts

USER nimbix
RUN /usr/local/scripts/install-torch.sh

ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/AppDef.json /etc/NAE/AppDef.json

USER nimbix
WORKDIR /home/nimbix

