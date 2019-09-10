### docker-nginx
docker snapshot build for [official nginx](https://hub.docker.com/_/nginx/)

[![](https://badge.imagelayers.io/elegoev/nginx:latest.svg)](https://imagelayers.io/?images=elegoev/nginx:latest 'Get your own badge on imagelayers.io')
[![GitHub version](https://badge.fury.io/gh/elegoev%2Fdocker-nginx.svg)](https://badge.fury.io/gh/elegoev%2Fdocker-nginx)
[![Stories in Ready](https://badge.waffle.io/elegoev/docker-nginx.png?label=ready&title=Ready)](https://waffle.io/elegoev/docker-nginx)

#### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

#### Scripts
docker_build_image.sh         
* Creates local image for testing

docker_release_image.sh
* Creates a tag with the defined version on [Github](http://github.com)
* Image is automated created on [Dockerhub](https://hub.docker.com/r/elegoev/nginx/)

#### Docker-Compose

Prerequisites
* Access is configured with nginx (see configuration under /data/auth)
* Domain name `dockerui.developer.com` resolve to `<dockerd host ip>:80`

Create new release
* Define version number in `version`
* Create tag with `./docker_release_image.sh`
* An automated build for [elegoev/nginx](https://hub.docker.com/r/elegoev/nginx/) is created on dockerhub

Local image build
* Test DNS lookup `ping dockerui.developer.com` (if not working check /etc/hosts)
* Create image `./docker_build_images.sh`
* Start container `docker-compose up -d`
* Start browser with `http://dockerui.developer.com`

Remote image (dockerhub)
* Stop containers `docker-compose stop`
* Delete containers `docker-compose rm`
* Drop images `docker rmi elegoev/nginx`
* Start container `docker-compose up -d`
* Start browser with `http://dockerui.developer.com`

#### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-nginx/blob/master/CHANGELOG.md)

#### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [Licence](https://github.com/elegoev/docker-nginx/blob/master/Licence) file.

#### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-nginx/issues)
