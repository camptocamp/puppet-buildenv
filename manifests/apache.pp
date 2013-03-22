# Class: buildenv::apache
#
# Setup a build environment for Apache building.
#
class buildenv::apache {

  $package_name = $::osfamily ? {
    'RedHat' => 'httpd-devel',
    'Debian' => 'apache2-threaded-dev',
  }

  package {'apache-dev':
    ensure => present,
    name   => $package_name,
  }

}
