node default {
  include sensu

  package {'sensu-plugins-load-checks':
    ensure      => 'installed',
    provider    => sensu_gem,
  }
}
