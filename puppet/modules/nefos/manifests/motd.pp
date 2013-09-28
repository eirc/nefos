class nefos::motd {
  class { '::motd':
    template => 'nefos/motd.erb',
  }
}
