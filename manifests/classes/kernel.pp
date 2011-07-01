class buildenv::kernel inherits buildenv::cpp {

  package { "kernel-dev":
    ensure => present,
    name   => $operatingsystem ? {
      /Debian|Ubuntu/ => "linux-headers-${kernelrelease}",
      /RedHat|CentOS/ => "kernel-devel-${kernelrelease}",
    },
  }
}
