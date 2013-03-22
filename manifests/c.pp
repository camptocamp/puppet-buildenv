# Class: buildenv::c
#
# Setup a build environment for C programs building.
#
class buildenv::c {

  package {
    [
      'make',
      'gcc',
      'cpp',
      'autoconf',
      'automake',
      'm4',
      'bison',
      'libtool',
    ]:
    ensure => present,
  }

  $libc_dev_package_name = $::osfamily ? {
    'Debian' => 'libc6-dev',
    'RedHat' => 'glibc-devel',
  }

  package { 'libc-dev':
    ensure => present,
    name   => $libc_dev_package_name,
  }

  $pkg_config_package_name = $::osfamily ? {
    'Debian' => 'pkg-config',
    'RedHat' => 'pkgconfig',
  }

  package { 'pkg-config':
    ensure => present,
    name   => $pkg_config_package_name,
  }

}
