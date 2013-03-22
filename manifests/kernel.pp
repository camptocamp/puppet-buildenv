class buildenv::kernel {

  include ::buildenv::cpp

  $package_name = $::osfamily ? {
    'Debian' => "linux-headers-${::kernelrelease}",
    'RedHat' => "kernel-devel-${::kernelrelease}",
  }

  package { 'kernel-dev':
    ensure => present,
    name   => $package_name,
  }
}