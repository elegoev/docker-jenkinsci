#!/bin/bash

# set color
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

NAMESPACE="elegoev"
CONTAINERNAME="jenkinsci"

# create image
echo -e "${GREEN}#########################${NC}"
echo -e "${GREEN}# >>>> remove container  ${NC}"
echo -e "${GREEN}#########################${NC}"
CONTAINERID=$(docker ps -a | grep $CONTAINERNAME | awk '{ print $1 }')
if [ -z $CONTAINERID ]
then
  echo -e "Container $CONTAINERNAME doesn't exists"
else
  docker stop $CONTAINERNAME
  docker rm $CONTAINERNAME
  echo -e "Container $CONTAINERNAME deleted"
fi

# create image
echo -e "${GREEN}######################${NC}"
echo -e "${GREEN}# >>>> create image   ${NC}"
echo -e "${GREEN}######################${NC}"
docker build --rm -t $NAMESPACE/$CONTAINERNAME .

# delete configuration
echo -e "${GREEN}######################${NC}"
echo -e "${GREEN}# >>>> delete config  ${NC}"
echo -e "${GREEN}######################${NC}"
JENKINSHOME="/home/vagrant/jenkins"
CASCCONFIG="casc_configs"
sudo rm -fr $JENKINSHOME

# run image
echo -e "${GREEN}######################${NC}"
echo -e "${GREEN}# >>>> run image     #${NC}"
echo -e "${GREEN}######################${NC}"
if [ ! -d "$JENKINSHOME/$CASCCONFIG" ]; then
  sudo mkdir -p $JENKINSHOME/$CASCCONFIG
fi
sudo cp /vagrant/data/jenkins-config/*.yaml ${JENKINSHOME}/${CASCCONFIG}
docker run -d --restart=unless-stopped --name $CONTAINERNAME \
           -p 8080:8080 -p 50000:50000 \
           -v $JENKINSHOME:/var/jenkins_home \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -e JENKINS_EMAIL="admin@localhost" \
           -e JENKINS_URL="http://localhost:8080/" \
           -e JENKINS_USER="admin" \
           -e JENKINS_PASS="admin" \
           -e CASC_JENKINS_CONFIG="/var/jenkins_home/$CASCCONFIG" \
           $NAMESPACE/$CONTAINERNAME
