# Class: buildenv::apache
#
# Setup a build environment for Apache building.
#
class buildenv::apache {

  case $::osfamily {

    'RedHat': {
      package {'apache-dev':
        ensure => present,
        name   => 'httpd-devel',
      }
      package { ['apr-devel', 'apr-util-devel']:
        ensure => present,
      }
    }

    'Debian': {
      package {'apache-dev':
        ensure => present,
        name   => 'apache2-threaded-dev',
      }
      package { ['libapr1-dev', 'libaprutil1-dev']:
        ensure => present,
      }
    }
  }
}
