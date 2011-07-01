class buildenv::cpp inherits buildenv::c {

  package { "g++":
    name => $operatingsystem ? {
      /RedHat|CentOS/ => "gcc-c++",
      /Debian|Ubuntu/ => "g++",
    },
  }
}
