FROM nimbix/ubuntu-desktop:trusty
MAINTAINER Nimbix, Inc.

USER root
ADD ./scripts /usr/local/scripts
RUN /usr/local/scripts/install-torch.sh

USER nimbix
