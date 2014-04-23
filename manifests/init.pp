# == Class: duplicity
#
# Full description of class duplicity here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class duplicity (
  $package_name = $duplicity::params::package_name,
  $service_name = $duplicity::params::service_name,
  $target       = $duplicity::params::target,
) inherits duplicity::params {

  # validate parameters here

  class { 'duplicity::install': } ->
  class { 'duplicity::config': } ->
  class { 'duplicity::cron': } ->
  Class['duplicity']
}
