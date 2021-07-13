# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
   config.vm.box = "hashicorp/bionic64"
   config.vm.synced_folder ".", "/vagrant", disabled: true
   config.vm.synced_folder ".", "/home/vagrant/decidim-nouvelle-aquitaine"
   config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y ansible
     ansible-playbook /home/vagrant/decidim-nouvelle-aquitaine/ansible/system-playbook.yml
     ansible-playbook /home/vagrant/decidim-nouvelle-aquitaine/ansible/decidim-playbook.yml
   SHELL
end
