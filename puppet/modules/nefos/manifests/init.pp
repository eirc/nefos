class nefos {
  # Require an apt-get update for all package declarations
  exec { 'apt-get update': path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' }
  Exec['apt-get update'] -> Package <| |>
}
