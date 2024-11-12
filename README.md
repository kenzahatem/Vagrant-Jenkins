<!-- Installation de virtualbox
Installation de vagrant 
configuration de vagrantfile/ jenkins.ssh 

se connecter : vagrant ssh 
vérifier le port : vagrant port 
arreter la machine : vagrant halt 
détruire la machine : vagrant destroy -f 
Reload avec les modifications apportées : vagrant up --provision 
démarrer : vagrant up 


Une fois connecté  : 
vérifier la status de jenkins : sudo systemctl status jenkins
consulter le journal d'erreur  : sudo journalctl -u jenkins

Si jenkins n'est pas démarrer , c'est du probablement a une version java trop ancienne (c'etais mon cas ) , pour vérifier cela : sudo /usr/bin/jenkins

Pour installer une autre version(17) : 
sudo apt update
sudo apt install -y openjdk-17-jdk

redemarrer le serveur  : sudo systemctl restart jenkins

NB: vérifier les ports 
mmodifier le port de jenkins :  sudo nano /etc/default/jenkins & 
sudo nano /etc/systemd/system/jenkins.service

redemarrer : 
sudo systemctl daemon-reload # si jenkins.service est modifié 
sudo systemctl restart jenkins


vérifier que le port est en écoute : sudo lsof -i :8084

si c'est le cas tous est bien configuré : http://localhost:8084/ -->

# Jenkins Setup with Vagrant and VirtualBox

## Prerequisites

1. **Install VirtualBox**
2. **Install Vagrant**

## Vagrant Setup

1. **Configure the Vagrantfile**
   - Ensure your `Vagrantfile` is set up with port forwarding and appropriate configurations for Jenkins and SSH.

2. **Basic Vagrant Commands**
   - **Connect to VM:** `vagrant ssh`
   - **Check Port Forwarding:** `vagrant port`
   - **Stop the VM:** `vagrant halt`
   - **Destroy the VM:** `vagrant destroy -f`
   - **Reload with Updates:** `vagrant up --provision`
   - **Start the VM:** `vagrant up`

## Inside the VM

1. **Check Jenkins Status**
   ```bash
   sudo systemctl status jenkins
2. **View Jenkins Error Logs**
    ```bash
   sudo journalctl -u jenkins
3. **Troubleshoot Jenkins Start Issues**
 - If Jenkins does not start, it may be due to an outdated Java version.
 - Verify the Java version by running : 
     ```bash
   sudo /usr/bin/jenkins

<!--
## Install Java 17 (If Required)

**Update Packages and Install OpenJDK 17**
    ```bash
    sudo apt update
    sudo apt install -y openjdk-17-jdk


**Update Packages and Install OpenJDK 17**
    ```bash 
    sudo nano /etc/default/jenkins
    sudo nano /etc/systemd/system/jenkins.service

**Reload and Restart Jenkins Service**
    ```bash 
#    sudo systemctl daemon-reload  # Only if jenkins.service was modified
#sudo systemctl restart jenkins
 -->


**Verify Jenkins Port**
    ```bash
    sudo lsof -i :8084

**Access Jenkins**
```http://localhost:8084/```





