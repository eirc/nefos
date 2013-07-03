# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = 'debian-7.1.0-amd64-netboot'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/6705768/debian-7.1.0-amd64-netboot.box'

  config.vm.define :util do |dev|
    dev.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path    = 'puppet/modules'
      puppet.manifest_file  = 'util.pp'
      puppet.options        = [ '--verbose' ]
    end

    dev.vm.hostname = 'util'
    dev.vm.network :private_network, :ip => '10.10.10.5'
  end

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
