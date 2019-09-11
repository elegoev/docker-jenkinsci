FROM jenkins/jenkins
MAINTAINER Urs Voegele

# Skip initial setup.
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false" \
    # Customizable settings:
    # Default admin user.
    JENKINS_USER=admin \
    JENKINS_PASS=admin \
    # Default email.
    JENKINS_EMAIL=admin@localhost \
    # Default URL.
    # This is necessary because Jenkins cannot reliably detect such a URL from within itself.
    JENKINS_URL=http://localhost:8080/

# Custom JENKINS groovy scripts...
COPY ./data/*.groovy /usr/share/jenkins/ref/init.groovy.d/

# Install standard plugins
COPY ./data/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
