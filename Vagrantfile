# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Servidor do Gestão DB
  config.vm.define "apiman" do |apiman|
    apiman.vm.hostname = 'apiman'
    apiman.vm.box = "ubuntu/xenial64"

    apiman.vm.network :private_network, ip: "192.168.2.1"
    apiman.vm.provision :shell, :path => "bootstrap_config.sh"
    apiman.vm.network "forwarded_port", guest: 8080, host: 8080

    apiman.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
    end
  end
end
