node default {
  include sensu

  $sensu_gem_list = [ 'sensu-plugins-disk-checks',
                      'sensu-plugins-load-checks',
                      'sensu-plugins-memory-checks',
                      'sensu-plugins-puppet',
                      'sensu-plugins-process-checks',
                      'sensu-plugins-network-checks',
                      'sensu-plugins-cassandra,
                      'sensu-plugins-raid-checks']

  package {$sensu_gem_list :
    ensure      => 'installed',
    provider    => sensu_gem
  }
}
