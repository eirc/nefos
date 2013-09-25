# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  # Setup common debian 7.1 box for all machines
  config.vm.box = 'debian-7.1.0-amd64-netboot'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/6705768/boxes/debian-7.1.0-amd64-netboot.box'

  config.vm.define :aptcache do |aptcache|
    aptcache.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path    = 'puppet/modules'
      puppet.manifest_file  = 'aptcache.pp'
      puppet.options        = [ '--verbose' ]
    end

    aptcache.vm.hostname = 'aptcache'
    aptcache.vm.network :private_network, :ip => '10.10.10.6'
  end
end
