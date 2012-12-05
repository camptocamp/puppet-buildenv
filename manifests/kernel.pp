class buildenv::kernel inherits buildenv::cpp {

  $package_name = $::operatingsystem ? {
    /Debian|Ubuntu/        => "linux-headers-${::kernelrelease}",
    /RedHat|Fedora|CentOS/ => "kernel-devel-${::kernelrelease}",
  }

  package { 'kernel-dev':
    ensure => present,
    name   => $package_name,
  }
}
