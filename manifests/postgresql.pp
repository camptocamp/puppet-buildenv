# Class: buildenv::postgresql
#
# Setup a build environment for Postgresql building.
#
class buildenv::postgresql {

  warning 'Deprecated, please use postgresql::lib::devel'

  $package_name = $::osfamily ? {
    'RedHat' => 'postgresql-devel',
    'Debian' => 'libpq-dev',
  }

  package {'postgresql-dev':
    ensure => present,
    name   => $package_name,
  }

}
