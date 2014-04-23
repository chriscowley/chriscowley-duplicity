# == Class duplicity::install
#
class duplicity::install {

  package { $duplicity::package_name:
    ensure => present,
  }
}
