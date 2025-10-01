FROM jenkins/jenkins:lts-jdk11

USER root

# Instalar dependencias mínimas
RUN apt-get update && \
    apt-get install -y docker.io docker-compose && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copiar script Groovy para crear usuario admin automáticamente
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/

# Volver al usuario jenkins
USER jenkins
