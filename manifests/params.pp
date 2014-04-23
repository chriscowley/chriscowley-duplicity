# == Class duplicity::params
#
# This class is meant to be called from duplicity
# It sets variables according to platform
#
class duplicity::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'duplicity'
    }
    'RedHat', 'Amazon': {
      $package_name = 'duplicity'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $manage_keys = false
  $target      = undef
}
