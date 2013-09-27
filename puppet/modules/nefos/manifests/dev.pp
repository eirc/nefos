class nefos::dev {
  if ! defined(Package['graphviz'])      { package { 'graphviz':      ensure => present } }
  if ! defined(Package['apache2-utils']) { package { 'apache2-utils': ensure => present } }
}
