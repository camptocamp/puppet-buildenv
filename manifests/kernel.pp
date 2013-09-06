# Class: buildenv::kernel
#
# Setup a build environment for kernel building.
#
class buildenv::kernel {

  include ::buildenv::cpp

  $package_name = $::osfamily ? {
    'Debian' => "linux-headers-${::kernelrelease}",
    'RedHat' => regsubst(
      "kernel-devel-${::kernelrelease}", '^(.+)(smp)?$', '\1'),
  }

  package { 'kernel-dev':
    ensure => present,
    name   => $package_name,
  }
}
