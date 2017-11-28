FROM resin/rpi-raspbian

RUN apt-get update && \
    apt-get install -q perl adduser iproute iputils-ping curl wget faad flac lame sox

ENV LANG en_US.UTF-8
ENV LOGITECH_MEDIA_SERVER_URL http://downloads.slimdevices.com/LogitechMediaServer_v7.9.0/logitechmediaserver_7.9.0_arm.deb
ENV LOGITECH_MEDIA_SERVER_VOLUME /logitech_media_server

RUN curl -Lfo /tmp/logitech-media-server.deb $LOGITECH_MEDIA_SERVER_URL && \
    dpkg -i /tmp/logitech-media-server.deb && \
    rm -f /tmp/logitech-media-server.deb && \
    apt-get clean

VOLUME $LOGITECH_MEDIA_SERVER_VOLUME

EXPOSE 3483 3483/udp 9000 9090

ADD start.sh /
RUN chmod +x start.sh

CMD ["/start.sh"]
