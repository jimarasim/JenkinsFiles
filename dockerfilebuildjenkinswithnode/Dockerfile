#   BUILD JENKINS ON DEBIAN IMAGE
FROM jenkins
MAINTAINER James Arasim <jaemzware@hotmail.com>
#   PORT FOR STUFFEDANIMALWAR
EXPOSE 3000
#   https://docs.docker.com/engine/articles/dockerfile_best-practices/
#   if we want to install via apt
USER root

#########################################
#   SETUP SOURCES FOR FIREFOX
#   http://superuser.com/questions/322376/how-to-install-the-real-firefox-on-debian
#   Setup Firefox sources for debian
RUN echo "deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" >> /etc/apt/sources.list
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
#########################################

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
    x11vnc \
    xvfb \
    firefox-mozilla-build \
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


#########################################
#   SETUP VNC
RUN mkdir ~/.vnc
#   Setup a password
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
#   Port for VNC
EXPOSE 5900
#########################################
