FROM debian:9.5-slim

# Configure proxy

RUN set -e &&\
	apt-get update &&\
	apt-get upgrade &&\
	apt-get install -y wget unzip net-tools telnet openssh-client curl
  