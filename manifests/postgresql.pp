class buildenv::postgresql {

  $package_name = $::osfamily ? {
    'RedHat' => 'postgresql-devel',
    'Debian' => 'libpq-dev',
  }

  package {'postgresql-dev':
    ensure => present,
    name   => $package_name,
  }

}
