nefos
=====

My automated cloud. This project uses [Vagrant](http://www.vagrantup.com/) and [Puppet](http://puppetlabs.com/)
to spawn VMs and set them up to do various dev common things.

To use just [install Vagrant](http://docs.vagrantup.com/v2/installation/index.html), clone the repo and
`vagrant up <vmname>`!

Current available VMs:

* util - Various utilities machine
* aptcache - Provides caching for apt-get packages in other debian machines
