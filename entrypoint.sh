#!/bin/bash

steamcmd +login anonymous +force_install_dir $SERVER_DIRECTORY +app_update 896660 validate +exit

mv $SERVER_DIRECTORY/steamclient.so $SERVER_DIRECTORY/steamclient.so.orig
cp /root/.steam/steamcmd/linux64/steamclient.so $SERVER_DIRECTORY/

./valheim_server.x86_64 -name "${SERVER_NAME}" -port 2456 -world "${WORLD_NAME}" -password "${SERVER_PASSWORD}" -public ${IS_PUBLIC}
