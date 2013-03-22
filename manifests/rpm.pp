# Class: buildenv::rpm
#
# Setup a build environment for RPM building.
#
class buildenv::rpm {

  $rpmbuild = $::osfamily ? {
    'Debian' => 'rpm',
    default  => 'rpm-build',
  }

  package { $rpmbuild:
    ensure => present,
  }

}
