#FROM linuxserver/plex
FROM plexinc/pms-docker

ENV PLEX_PATH=/usr/lib/plexmediaserver

RUN \
  apt-get update && \
  apt-get install -y vim

RUN \
  apt-get clean && \
  rm -rf \
    /etc/default/plexmediaserver \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

RUN mv $PLEX_PATH/Plex\ Transcoder \
  $PLEX_PATH/Plex\ Transcoder2

ADD --chown=0:0 ["Plex Transcoder", "$PLEX_PATH/Plex Transcoder"]

RUN chmod a+x $PLEX_PATH/Plex\ Transcoder


