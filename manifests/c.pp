class buildenv::c {

  package {
    ["make", "gcc", "cpp", "autoconf",
     "automake", "m4", "bison", "libtool"]:
    ensure => present,
  }

  package { "libc-dev":
    ensure => present,
    name   => $operatingsystem ? {
      /Debian|Ubuntu/ => "libc6-dev",
      /RedHat|Fedora|CentOS/ => "glibc-devel",
    },
  }

  package { "pkg-config":
    ensure => present,
    name   => $operatingsystem ? {
      /Debian|Ubuntu|kFreeBSD/ => "pkg-config",
      /RedHat|Fedora|CentOS/   => "pkgconfig",
    },
  }

}
