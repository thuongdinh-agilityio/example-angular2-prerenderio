# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.synced_folder ".", "/home/vagrant/app"
  config.ssh.forward_agent = true

  config.vm.box = "trusty64"
  config.vm.network "private_network", ip: "44.44.44.44"
  config.vm.provision "shell",
    :path => "vagrant_provision.sh"

end