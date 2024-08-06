FROM ubuntu:noble
RUN apt-get -y update && \
    apt-get -y install wget
RUN wget -O ./puppet.deb https://apt.puppetlabs.com/puppet8-release-noble.deb
RUN apt-get -y install ./puppet.deb && \
    apt-get -y update && \
    apt-get -y install puppet-agent
ENTRYPOINT [ "/bin/bash" ]