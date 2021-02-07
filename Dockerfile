FROM steamcmd/steamcmd:latest

ARG SERVER_DIRECTORY=/server
ARG WORLDS_DIRECTORY=/world

EXPOSE 2456/tcp
EXPOSE 2456/udp
EXPOSE 2457/tcp
EXPOSE 2457/udp
EXPOSE 2458/tcp
EXPOSE 2458/udp

EXPOSE 27015/tcp
EXPOSE 27015/udp

ENV	SERVER_DIRECTORY=$SERVER_DIRECTORY \
    WORLDS_DIRECTORY=$WORLDS_DIRECTORY \
    SERVER_NAME="scones' dedicated valheim server dockerized" \
    SERVER_PASSWORD="some password default you need to change" \
    IS_PUBLIC="1" \
    WORLD_NAME="Some great valheim world"

RUN mkdir -p $SERVER_DIRECTORY
RUN mkdir -p $WORLDS_DIRECTORY

WORKDIR $SERVER_DIRECTORY

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
