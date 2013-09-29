class nefos {
  # Include stuff needed on all nefos machines
  include nefos::nefos::common_packages
  include nefos::users
  include nefos::apt_get_update
  include nefos::motd
  include ::ntp
}
