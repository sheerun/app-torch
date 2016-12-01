FROM nimbix/ubuntu-desktop:trusty
MAINTAINER Nimbix, Inc.

USER root
ADD ./scripts /usr/local/scripts
RUN /usr/local/scripts/install-torch.sh

ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/AppDef.json /etc/NAE/AppDef.json

USER nimbix
