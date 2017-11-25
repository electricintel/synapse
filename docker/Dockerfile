FROM ubuntu:latest

RUN apt-get update && \
      apt-get -y install sudo



#RUN apt-get update &&\
 #   apt-get install -y git

RUN apt-get -y install build-essential python2.7-dev libffi-dev \
                     python-pip python-setuptools sqlite3 \
                     libssl-dev python-virtualenv libjpeg-dev libxslt1-dev

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh