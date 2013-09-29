class nefos {
  # Include stuff needed on all nefos machines
  include nefos::common
  include nefos::users
  include nefos::apt_get_update
}
