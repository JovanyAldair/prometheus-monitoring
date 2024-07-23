# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.define "app_server" do |app|
    app.vm.box = "ubuntu/bionic64"
    app.vm.hostname = "app-server"
    app.vm.network "private_network", ip: "192.168.57.50"
    app.vm.provision "shell", path: "scripts/app_server.sh"

    app.vm.provider "virtualbox" do |vb|
      vb.name = "machine01"
      vb.memory = 400
      vb.cpus = 1
    end
  end


  config.vm.define "monitor_server" do |monitor|
    monitor.vm.box = "ubuntu/bionic64"
    monitor.vm.hostname = "monitor-server"
    monitor.vm.network "private_network", ip: "192.168.57.52"
    monitor.vm.provision "shell", path: "scripts/monitor_server.sh"
    
    monitor.vm.provider "virtualbox" do |vb|
      vb.name = "machine03"
      vb.memory = 400
      vb.cpus = 1
    end
  end
  
end
