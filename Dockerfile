FROM jenkins/jenkins:lts

# Add a /Aurora-Labs-Ex volume
VOLUME ["/jenkins-data"]

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt