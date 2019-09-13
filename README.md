![GitHub release (latest by date)](https://img.shields.io/github/v/release/elegoev/docker-jenkinsci?style=plastic)

### docker-jenkinsci

### Base image
Used base image [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins)

### References
- [Developing Groovy Scripts to Automate Jenkins](https://brokenco.de/2017/07/24/groovy-automation-for-jenkins.html)
- [Jenkins updating init.groovy.d files in a docker container](https://stackoverflow.com/questions/45818327/jenkins-updating-init-groovy-d-files-in-a-docker-container)

### Ports & Access
| Application          | URL                         |
|----------------------|-----------------------------|
| Jenkins              | http://localhost:8080       |
| Jenkins Blue Ocean   | http://localhost:8080/blue  |

### Docker Commands
|                      | command                                            |
|----------------------|----------------------------------------------------|
| build image          | docker build --rm -t elegoev/jenkinsci .           |
| shell in container   | docker exec -it \<container id\> bash              |

### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-jenkinsci/blob/master/CHANGELOG.md)

### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoev/docker-jenkinsci/blob/master/LICENSE) file.

### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-jenkinsci/issues)
