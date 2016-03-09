#   BUILD JENKINS ON DEBIAN IMAGE
#   NOTE: THIS EXPOSES 50000 AS THE SLAVE AGENT PORT, AND 8080
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
#   Helpful link: http://www.karlrunge.com/x11vnc/faq.html#faq-passwd
#   RUN IN JENKINS CONFIGURATION XVNC COMMAND LINE WITH
#   ATTEMPT 1: /usr/bin/x11vnc -create -rfbauth $HOME/.vnc/passwd -display :$DISPLAY_NUMBER
#   ATTEMPT 2: /usr/bin/x11vnc -rfbauth $HOME/.vnc/passwd -display :$DISPLAY_NUMBER
#   ATTEMPT 3: /usr/bin/x11vnc -usepw -create -forever -display :$DISPLAY_NUMBER
#   ATTEMPT 3: /usr/bin/x11vnc -usepw -create -forever -display :0
#   ATTEMPT 4: /usr/bin/x11vnc -create -rfbauth $HOME/.vnc/passwd
#   ATTEMPT 5: /usr/bin/x11vnc -create -localhost -rfbauth $HOME/.vnc/passwd
#   ATTEMPT 6: /usr/bin/x11vnc -create -localhost -rfbauth $HOME/.vnc/passwd -display :$DISPLAY_NUMBER
#   ATTEMPT 7: /usr/bin/x11vnc -create -rfbauth $HOME/.vnc/passwd -display :$DISPLAY_NUMBER
#   ATTEMPT 8: /usr/bin/x11vnc -create -rfbauth $HOME/.vnc/passwd -auth guess -display :$DISPLAY_NUMBER
#   xauth:  error in locking authority file /var/jenkins_home/jobs/Board/workspace/.Xauthority-6843948237589359171 <== try deleting this because there is no non-root user
#   Unable to connect to host 127.0.0.1 on port 7055 after 45000 <===try updating selenium

RUN mkdir ~/.vnc
#   Setup a password
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
#   Ports for VNC
#   ATTEMPT 6 THOUGHT: NEED TO EXPOSE ANY VNC PORTS I WANT TO USE THROUGH DOCKER BUILD FILE. RIGHT NOW THERES ONLY 5900, SO SET MIN AND MAX DISPLAY NUMBER (INCLUSIVE) TO 00
EXPOSE 5900
EXPOSE 5901
EXPOSE 5902
EXPOSE 5903
EXPOSE 5904
EXPOSE 5905
EXPOSE 5906
EXPOSE 5907
EXPOSE 5908
EXPOSE 5909
#########################################
