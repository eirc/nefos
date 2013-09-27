node default {
  include nefos
}

node 'dev' inherits default {
  include nefos::dev
}

node 'aptcacher' inherits default {
  include nefos::aptcacher
}
