# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 5000, host: 4444, host_ip: "127.0.0.1"
  config.vm.synced_folder "./", "/app"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "flask1"
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    /app/vagrantscript.sh
  SHELL
end
