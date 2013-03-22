class buildenv::cpp {

  include ::buildenv::c

  $package_name = $::osfamily ? {
    'RedHat' => 'gcc-c++',
    'Debian' => 'g++',
  }

  package { 'g++':
    name => $package_name,
  }
}
