class nefos::common {
  # Install common packages to all machines
  if ! defined(Package['dnsutils'])        { package { 'dnsutils':        ensure => present } }
  if ! defined(Package['screen'])          { package { 'screen':          ensure => present } }
  if ! defined(Package['less'])            { package { 'less':            ensure => present } }
  if ! defined(Package['curl'])            { package { 'curl':            ensure => present } }
  if ! defined(Package['wget'])            { package { 'wget':            ensure => present } }
  if ! defined(Package['bash-completion']) { package { 'bash-completion': ensure => present } }
  if ! defined(Package['bash'])            { package { 'bash':            ensure => present } }
  if ! defined(Package['atop'])            { package { 'atop':            ensure => present } }
  if ! defined(Package['htop'])            { package { 'htop':            ensure => present } }
  if ! defined(Package['iftop'])           { package { 'iftop':           ensure => present } }
  if ! defined(Package['lsof'])            { package { 'lsof':            ensure => present } }
  if ! defined(Package['vim'])             { package { 'vim':             ensure => present } }
  if ! defined(Package['git'])             { package { 'git':             ensure => present } }
  if ! defined(Package['git-core'])        { package { 'git-core':        ensure => present } }
  if ! defined(Package['patch'])           { package { 'patch':           ensure => present } }
  if ! defined(Package['bzip2'])           { package { 'bzip2':           ensure => present } }
  if ! defined(Package['sed'])             { package { 'sed':             ensure => present } }

  # A common motd
  include nefos::motd

  # Add ntp to all machines
  include '::ntp'
}
