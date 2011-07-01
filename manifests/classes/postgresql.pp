class buildenv::postgresql {

  package {"postgresql-dev":
    ensure => present,
    name => $operatingsystem ? {
      /RedHat|CentOS/ => "postgresql-devel",
      /Debian|Ubuntu/ => "libpq-dev",
    }
  }

}
