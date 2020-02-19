FROM debian

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install build-essential git vim emacs -y


# ------------------------------------------------------------------------------
# How to build and run it:
#		<< docker build -t b-ex00 . && docker run -it --rm b-ex00 >> 
# 											| -t	* Name and optionally a tag in the ‘name:tag’ format
# 											| --rm	* Automatically remove the container when it exits
# ------------------------------------------------------------------------------