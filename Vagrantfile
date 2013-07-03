# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = 'debian-7.1.0-amd64-netboot'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/6705768/debian-7.1.0-amd64-netboot.box'

  [
      ['util',     '10.10.10.5'],
      ['aptcache', '10.10.10.6']
  ].each do |hostname, ip|

    config.vm.define hostname do |host|
      host.vm.provision :puppet do |puppet|
        puppet.manifests_path = 'puppet/manifests'
        puppet.module_path    = 'puppet/modules'
        puppet.manifest_file  = "#{hostname}.pp"
        puppet.options        = [ '--verbose' ]
      end

      host.vm.hostname = hostname
      host.vm.network :private_network, :ip => ip
    end
  end
end
