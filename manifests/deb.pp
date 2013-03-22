# Class: buildenv::deb
#
# Setup a build environment for DEB building.
#
class buildenv::deb {

  package {
    [
      'lintian',
      'dput',
      'dpatch',
      'devscripts',
      'build-essential',
      'dh-make',
      'dpkg-dev',
      'fakeroot',
      'cdbs'
    ]:
    ensure => present,
  }

}

