FROM jenkins/jenkins
MAINTAINER Urs Voegele

COPY ./data/plugins.txt /usr/share/jenkins/ref/plugins.txt
