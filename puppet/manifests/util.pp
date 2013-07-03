$packages_common = [ 'dnsutils', 'screen', 'less', 'curl', 'wget', 'bash-completion', 'bash', 'atop', 'htop', 'vim',
                     'ngrep', 'git-core', 'patch', 'bzip2', 'sed', 'lsof', 'iftop', 'apache2-utils' ]

package { $packages_common:
  ensure => installed
}
