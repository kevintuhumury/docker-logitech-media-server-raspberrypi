#!/bin/bash

exec squeezeboxserver \
  --user root \
  --logdir $LOGITECH_MEDIA_SERVER_VOLUME/logs \
  --prefsdir $LOGITECH_MEDIA_SERVER_VOLUME/prefs \
  --cachedir $LOGITECH_MEDIA_SERVER_VOLUME/cache
