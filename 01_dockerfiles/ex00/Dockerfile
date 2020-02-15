FROM alpine

RUN apk update && apk upgrade && apk add vim

ENTRYPOINT vim


# ------------------------------------------------------------------------------
# How to build it:
# 		<< docker build -t ex00 . >>		| -t	* Name and optionally a tag in the ‘name:tag’ format
#
# How to check it:
# 		<< docker run -it --rm ex00 >>		| --rm	* Automatically remove the container when it exits
#
# https://docs.docker.com/engine/reference/run
# https://docs.docker.com/engine/reference/commandline/build/
# https://kapeli.com/cheat_sheets/Dockerfile.docset/Contents/Resources/Documents/index
# ------------------------------------------------------------------------------