# apiman-json-server
Vagrant project with Apiman 1.3.0.Final and json-server 0.12.0 This is an example project about apiman and a mocked application server.

## Pre-requisites

Vagrant must be installed with virtualbox. This project was tested in versions:

* Virtualbox : 5.1.18 r114002 (Qt5.5.1)
* Vagrant 1.9.5

## Init

Start application with command `vagrant up` and then wait while all applications being installed.

* java
* Wildfly 10.1.0 with Apiman 1.3.0.Final
* NodeJS 6.x
* json-server 0.12.0

When all process is completed, you can reboot the vagrant VM qnd all apps will work fine.

## Url

Type:

```http://192.168.2.1:8080/apimanui```

and set login/password
```
admin
admin123!
```

## Import Data

On dashboard, go to `Export/Import Data` and import all data contained in file `api-manager-export.json`.

