class buildenv::postgresql {

  package {"postgresql-dev":
    ensure => present,
    name => $operatingsystem ? {
      /RedHat|Fedora|CentOS/ => "postgresql-devel",
      /Debian|Ubuntu/ => "libpq-dev",
    }
  }

}
