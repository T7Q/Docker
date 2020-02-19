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


# ------------------------------------------------------------------------------
# How to build and run it:
# 			<< docker build -t ex01 . && docker run -it --rm -p=9987:9987/udp  -p=10011:10011 -p=30033:30033 ex01 >>
#
# to check
# 			docker logs my_teamspeak	* to check the password-token
#			docker-machine ip Char 		* to check login
#			open teams speak -> connections -> connect -> enter login and pass
#			docker stop ex01			* to stop team-speak
#
#
# ENV TS3SERVER_LICENSE=accept 		* It's necessary to override the env-variable
# WORKDIR 							* Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it.
# EXPOSE 							* Informs Docker that the container listens on the specified network port(s) at runtime. The nubers are the ports to the teamspeak host.
# RUN 								* We run debian install and upgrade the latest version, we get wget to download sources from web and bzip2 open source data compressor to open the teamspeak server and get the team speak server.
#
# tar flags 						* -x extract, -v (verbose), list the files as they are being extracted. -f (file) name of the tar file we want to work with
# ------------------------------------------------------------------------------