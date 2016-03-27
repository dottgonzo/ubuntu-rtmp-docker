FROM ubuntu:latest
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y dpkg-dev
RUN apt-get source nginx
RUN cd cd /usr/src/nginx && git clone https://github.com/arut/nginx-rtmp-module.git
RUN cd /usr/src/nginx && 
RUN apt-get build-dep nginx
RUN cd /usr/src/nginx && dpkg-buildpackage -b && cd .. && sudo dpkg --install...
