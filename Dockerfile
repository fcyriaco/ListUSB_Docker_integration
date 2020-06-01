FROM debian:buster

RUN apt-get update && apt-get dist-upgrade
RUN apt-get install libusb-1.0-0-dev -y 
COPY listusb_1.0_amd64.deb /root/listusb_1.0_amd64.deb
RUN apt-get install /root/listusb_1.0_amd64.deb

