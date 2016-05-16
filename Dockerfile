FROM ubuntu:latest
MAINTAINER Robert Barrow <robert.barrow@obejctway.com>
WORKDIR /conectus
COPY * /conectus/
RUN /conectus/init_image.sh
EXPOSE 8080
CMD cat /conectus/README.md
