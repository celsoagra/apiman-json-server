#!/usr/bin/env bash

echo "Installing java"
sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install unzip zip -y

echo "Installing wildfly"
mkdir apiman-1.3.0.Final
cd apiman-1.3.0.Final
curl http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip -o wildfly-10.1.0.Final.zip
curl http://downloads.jboss.org/apiman/1.3.0.Final/apiman-distro-wildfly10-1.3.0.Final-overlay.zip -o apiman-distro-wildfly10-1.3.0.Final-overlay.zip
unzip wildfly-10.1.0.Final.zip
mv wildfly-10.1.0.Final /opt/wildfly
unzip -o apiman-distro-wildfly10-1.3.0.Final-overlay.zip -d /opt/wildfly

echo "Installing Nodejs 6.x"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential

echo "Installing json-server"
sudo npm install -g json-server@0.12.0

mkdir /opt/testserver
echo  '{ "person": [{ "id" : 1, "name": "personname" }] }' > /opt/testserver/example.json

sudo chown -R ubuntu:ubuntu /opt/testserver
sudo chown -R ubuntu:ubuntu /opt/wildfly

sudo cp /vagrant/rc.local /etc/rc.local

echo "Restart vagrant to start server server"

# cd wildfly-10.0.0.Final
# ./bin/standalone.sh -c standalone-apiman.xml &

# /opt/wildfly/bin/standalone.sh -c standalone-apiman.xml &
# json-server --watch /opt/testserver/example.json &
