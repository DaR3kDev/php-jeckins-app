FROM jenkins/jenkins:lts-jdk11

USER root

# Instalar Docker CLI dentro de Jenkins
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# Agregar usuario jenkins al grupo docker
RUN usermod -aG docker jenkins

USER jenkins
