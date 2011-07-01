class buildenv::postgresql {

  package {"postgresql-dev":
    ensure => present,
    name => $operatingsystem ? {
      RedHat => "postgresql-devel",
      Debian => "libpq-dev",
    }
  }

}
