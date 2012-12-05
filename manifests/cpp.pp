class buildenv::cpp inherits buildenv::c {

  $package_name = $::operatingsystem ? {
    /RedHat|Fedora|CentOS/ => 'gcc-c++',
    /Debian|Ubuntu/        => 'g++',
  }

  package { 'g++':
    name => $package_name,
  }
}
