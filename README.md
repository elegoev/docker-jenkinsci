![GitHub release (latest by date)](https://img.shields.io/github/v/release/elegoev/docker-jenkinsci?style=plastic)

### [docker-jenkinsci](https://github.com/elegoev/docker-jenkinsci)
autobuild from https://github.com/elegoev/docker-jenkinsci

### Base Image
Used base image [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins)

### Environment Variables
| Application          | URL                                          |
|----------------------|----------------------------------------------|
| JENKINS_EMAIL        | e-mail-adresse for sysadmin                  |
| JENKINS_URL          | jenkins URL                                  |
| JENKINS_USER         | jenkins sysadmin                             |
| JENKINS_PASS         | password for sysadmin                        |
| CASC_JENKINS_CONFIG  | config directory for 'configuration as code' |

### Run Command
    docker run -d --restart=unless-stopped --name jenkinsci \
           -p 8080:8080 -p 50000:50000 \
           -v jenkins:/var/jenkins_home \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -e JENKINS_EMAIL="admin@localhost" \
           -e JENKINS_URL="http://localhost:8080/" \
           -e JENKINS_USER="admin" \
           -e JENKINS_PASS="admin" \
           -e CASC_JENKINS_CONFIG="/var/jenkins_home/casc-config" \
           elegoev/jenkinsci

### References
- [Developing Groovy Scripts to Automate Jenkins](https://brokenco.de/2017/07/24/groovy-automation-for-jenkins.html)
- [Jenkins updating init.groovy.d files in a docker container](https://stackoverflow.com/questions/45818327/jenkins-updating-init-groovy-d-files-in-a-docker-container)
- [JFrog Client](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory)
- [Getting started with Jenkins Configuration as Code](https://www.praqma.com/stories/start-jenkins-config-as-code/)
- [GitHub configuration-as-code-plugin](https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos)
- [Jenkins CLI](https://jenkins.io/doc/book/managing/cli/#using-the-cli-client)
- [Using Docker-in-Docker for your CI or testing environment](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)

### Installed Tools
- Helm client v2.14.3
- JFrog client v1.28.0
- jq v1.5.1
- Docker client v18.09.7
- [Installed Jenkins Plugins](https://github.com/elegoev/docker-jenkinsci/blob/master/data/plugins.txt)

### Ports & Access
| Application          | URL                         |
|----------------------|-----------------------------|
| Jenkins              | http://localhost:8080       |
| Jenkins Blue Ocean   | http://localhost:8080/blue  |

### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-jenkinsci/blob/master/CHANGELOG.md)

### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoev/docker-jenkinsci/blob/master/LICENSE) file.

### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-jenkinsci/issues)
