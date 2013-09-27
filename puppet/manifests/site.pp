node default {
  include nefos
}


node 'aptcacher' inherits default {
  include nefos::aptcacher
}
