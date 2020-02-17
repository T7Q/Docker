FROM debian

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033

RUN apt-get update && \
	apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    wget http://files.teamspeak-services.com/releases/server/3.10.0/teamspeak3-server_linux_amd64-3.10.0.tar.bz2 && \
    tar -xvf teamspeak3-server_linux_amd64-3.10.0.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh


# docker build -t ex01 . && docker run -it --rm -p=9987:9987/udp  -p=10011:10011 -p=30033:30033 ex01
#
# to check
# 			docker logs my_teamspeak	* to check the password-token
#			docker-machine ip Char 		* to check login
#			open teams speak -> connections -> connect -> enter login and pass
#			docker stop ex01			* to stop team-speak