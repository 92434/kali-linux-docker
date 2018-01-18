FROM docker.io/kalilinux/kali-linux-docker

MAINTAINER mryqu
RUN \
 DEBIAN_FRONTEND=noninteractive apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get -y install zmap --fix-missing && \
 DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && \
 DEBIAN_FRONTEND=noninteractive apt-get clean
ENTRYPOINT ["zmap"]
