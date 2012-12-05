class buildenv::postgresql {

  $package_name = $::operatingsystem ? {
    /RedHat|Fedora|CentOS/ => 'postgresql-devel',
    /Debian|Ubuntu/        => 'libpq-dev',
  }

  package {'postgresql-dev':
    ensure => present,
    name   => $package_name,
  }

}
