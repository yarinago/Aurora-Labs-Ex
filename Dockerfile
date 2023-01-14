FROM jenkins/jenkins:lts

# Add a /Aurora-Labs-Ex volume
VOLUME ["/jenkins-data"]