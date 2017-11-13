FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	build-essential libtool autotools-dev automake pkg-config bsdmainutils \
	libssl-dev libevent-dev libdb5.3-dev libdb5.3++-dev libboost-all-dev \
	libminiupnpc-dev libzmq3-dev libzmqpp-dev \
	libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libqrencode-dev libprotobuf-dev libprotoc-dev protobuf-compiler && \
	apt-get clean

WORKDIR /dash

EXPOSE 19999
