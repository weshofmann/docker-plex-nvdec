#FROM linuxserver/plex
FROM plexinc/pms-docker

ENV PLEX_PATH=/usr/lib/plexmediaserver

RUN mv $PLEX_PATH/Plex\ Transcoder $PLEX_PATH/Plex\ Transcoder2

ADD --chown=0:0 ["Plex Transcoder", "$PLEX_PATH/Plex Transcoder"]

RUN chmod a+x $PLEX_PATH/Plex\ Transcoder
