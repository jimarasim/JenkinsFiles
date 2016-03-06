FROM jenkins
MAINTAINER James Arasim <jaemzware@hotmail.com>
EXPOSE 3000
# https://docs.docker.com/engine/articles/dockerfile_best-practices/
# if we want to install via apt
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
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# https://github.com/dockerfile/nodejs/blob/master/Dockerfile
# Install Node.js
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