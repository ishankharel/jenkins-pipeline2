# jenkins-pipeline2 Job

## Install java on ubuntu 16.04  & 18.04


$ sudo apt install openjdk-8-jdk
OR
$ sudo apt install openjdk-11-jdk

## Install maven  ##


Very good artical which help me to install java and maven on ubunut 16.04 is listed here
```
 cd /opt/
 wget http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
 sudo tar -zxvf apache-maven-3.5.4-bin.tar.gz
 sudo mv apache-maven-3.5.4 maven 
 
 sudo vi /etc/profile.d/mavenenv.sh
 
 export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}


sudo chmod +x /etc/profile.d/mavenenv.sh
sudo source /etc/profile.d/mavenenv.sh

mvn --version

https://www.mkyong.com/java/how-to-install-java-jdk-on-ubuntu-linux/
```
# Install Jenkins on ubuntu 16.04 #

```
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get install jenkins
systemctl status jenkins
 ```
 
 # Install Sonar on Ubuntu 16.04 #
```
https://developerinsider.co/install-sonarqube-on-ubuntu/
