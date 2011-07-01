class buildenv::cpp inherits buildenv::c {

  package { "g++":
    name => $operatingsystem ? {
      /RedHat|Fedora|CentOS/ => "gcc-c++",
      /Debian|Ubuntu/ => "g++",
    },
  }
}
