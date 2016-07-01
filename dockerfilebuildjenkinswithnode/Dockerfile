#   BUILD JENKINS ON DEBIAN IMAGE
#   NOTE: THIS EXPOSES 50000 AS THE SLAVE AGENT PORT, AND 8080
#   NOTE: There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the lastCMD will take effect.
FROM jenkins:latest
MAINTAINER James Arasim <jaemzware@hotmail.com>
#########################################
#   EXPOSE PORTS
#   50000 exposed by jenkins:latest image
# 	TCP port for JNLP slave agents
EXPOSE 50000

#   8080 exposed by jenkins:latest image
EXPOSE 8080

#   Port for Selenium Grid Hub
EXPOSE 4444

#snmp
EXPOSE 587
EXPOSE 465

#########################################
#   https://docs.docker.com/engine/articles/dockerfile_best-practices/
#   if we want to install via apt
USER root
RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    libcap-dev \
    libsqlite3-dev \
    mercurial \
    reprepro \
    lsof \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
#########################################
#   INSTALL NODE.JS
#   https://github.com/dockerfile/nodejs/blob/master/Dockerfile
#   Install Node.js
RUN \
cd /tmp && \
wget http://nodejs.org/dist/node-latest.tar.gz && \
tar xvzf node-latest.tar.gz && \
rm -f node-latest.tar.gz && \
cd node-v* && \
./configure && \
CXX="g++ -Wno-unused-local-typedefs" make && \
CXX="g++ -Wno-unused-local-typedefs" make install && \
cd /tmp && \
rm -rf /tmp/node-v* && \
npm install -g npm && \
printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc
#########################################