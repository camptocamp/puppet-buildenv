/*

== Class: buildenv::rpm

Setup a build environment for RPM building.

*/

class buildenv::rpm {

  $rpmbuild = $::operatingsystem ? {
    /Debian|Ubuntu/ => 'rpm',
    default         => 'rpm-build',
  }

  package { $rpmbuild:
    ensure => present,
  }

}
