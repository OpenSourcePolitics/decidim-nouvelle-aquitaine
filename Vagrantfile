# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

   config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y ansible
     cd /vagrant
     ansible-playbook ansible/system-playbook.yml
     ansible-playbook ansible/decidim-playbook.yml
   SHELL
end
