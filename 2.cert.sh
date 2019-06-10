#! /bin/bash
source ./env.sh


if [ -z "$1" ] && [ -z "$2" ]; then
  echo 클라이언트 이름입력해야함.
  exit
fi

docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $1 nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $1 > $1.ovpn
