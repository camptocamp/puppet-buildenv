# Class: buildenv::kernel
#
# Setup a build environment for kernel building.
#
class buildenv::kernel {

  include ::buildenv::cpp

  $package_name = $::osfamily ? {
    'Debian' => "linux-headers-${::kernelrelease}",
    'RedHat' => $::kernelrelease ? {
      /smp$/   => regsubst(
        $::kernelrelease, '^(.*)smp$', 'kernel-smp-devel-\1'),
      default => "kernel-devel-${::kernelrelease}",
    },
  }

  package { 'kernel-dev':
    ensure => present,
    name   => $package_name,
  }

  # other usefull packages with kernel
  case $::operatingsystem {

    Debian:  {
      package{ 'module-assistant':
        ensure => present,
      }
    }

    default: {}

  }

}
