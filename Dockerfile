FROM jenkins/jenkins:lts

USER root

# Add a /Aurora-Labs-Ex volume
VOLUME ["/jenkins-data"]

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN apt-get update && apt-get install -y iproute2 
#RUN touch /var/jenkins_home/casc.yaml 
#RUN sed -i "s/\${SERVER_IP}/$(hostname -i)/g" /var/jenkins_home/casc.yaml 
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /var/jenkins_home/casc.yaml