FROM python:3.6

RUN pip3 install locustio==0.8a2 pyzmq==15.2.0
WORKDIR /usr/src
