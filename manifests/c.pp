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

  $libc_dev_package_name = $::operatingsystem ? {
    /Debian|Ubuntu/        => 'libc6-dev',
    /RedHat|Fedora|CentOS/ => 'glibc-devel',
  }

  package { 'libc-dev':
    ensure => present,
    name   => $libc_dev_package_name,
  }

  $pkg_config_package_name = $::operatingsystem ? {
    /Debian|Ubuntu|kFreeBSD/ => 'pkg-config',
    /RedHat|Fedora|CentOS/   => 'pkgconfig',
  }

  package { 'pkg-config':
    ensure => present,
    name   => $pkg_config_package_name,
  }

}
