# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  # Setup common debian 7.1 box for all machines
  config.vm.box = 'debian-7.1.0-amd64-netboot'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/6705768/boxes/debian-7.1.0-amd64-netboot.box'

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path    = 'puppet/modules'
    puppet.manifest_file  = 'site.pp'
    puppet.options        = [ '--verbose --graph --graphdir /vagrant/graphs' ]
  end

  config.vm.define :dev do |box|
    box.vm.hostname = 'dev'
  end

  config.vm.define :aptcacher do |box|
    box.vm.hostname = 'aptcacher'
  end
end
