#!/bin/bash

# Mise à jour des paquets
sudo apt-get update
sudo apt-get upgrade -y

# Installation de Java (Jenkins nécessite Java)
sudo apt-get install -y openjdk-11-jdk

# Ajout de la clé GPG pour le dépôt Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Ajout du dépôt Jenkins sans vérification de clé GPG
echo "deb [trusted=yes] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Mise à jour des sources et installation de Jenkins
sudo apt-get update
sudo apt-get install -y jenkins

# Démarrage de Jenkins et activation au démarrage
sudo systemctl start jenkins
sudo systemctl enable jenkins
