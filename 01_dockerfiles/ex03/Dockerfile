FROM ubuntu

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget openssh-server ca-certificates postfix

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh
RUN apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
 	 apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# ------------------------------------------------------------------------------
# How to build it?
# 		<< docker build -t ex03 . >>
#		<< docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03 >>
# 		--privileged -> We need rights to write to the docker container file system, with privileged we get that result.
# RUN 		* Install and configure the necessary dependencies, with postfix we can send notification emails. https://about.gitlab.com/install/#ubuntu
# EXPOSE	* Needed ports for GitLab https://docs.gitlab.com/omnibus/package-information/defaults.html
#
# ENTRYPORT 	* Set entry point to reconfigure our GitLab setup, which will also
# 							- start GitLab after the setup is completed.
# 							- The tail (tail -f /dev/null) is needed to keep Docker containers Runnig: http://bigdatums.net/2017/11/07/how-to-keep-docker-containers-running/
# ------------------------------------------------------------------------------