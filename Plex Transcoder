#!/bin/bash

PLEX_PATH=/usr/lib/plexmediaserver

ALLOWED_CODECS=("h264" "hevc" "mpeg2video" "mpeg4" "vc1" "vp8" "vp9")

contains() {
  typeset _x;
  typeset -n _A="$1"
  for _x in "${_A[@]}" ; do
    [ "$_x" = "$2" ] && return 0
  done
  return 1
}
allowed_codec() {
  for i in "$@"; do
    if [ "-i" == "$i" ]; then
      return 1
    elif contains ALLOWED_CODECS "$i"; then
      return 0
    fi
  done
  return 1
}
if allowed_codec $*; then
  exec "$PLEX_PATH/Plex Transcoder2" -hwaccel nvdec "$@"
else
  exec "$PLEX_PATH/Plex Transcoder2" "$@"
fi

#exec "$PLEX_PATH/Plex Transcoder2" -hwaccel nvdec "$@"
