#! /bin/bash
source ./env.sh

docker run --name ovpn_server --restart always -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
