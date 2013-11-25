class people::fredoliveira::development {
  class { 'ruby::global':
    version => '2.0.0'
  }

  phantomjs::version { '1.9.0': }

  file { "${people::fredoliveira::params::my_projects}/boxen":
    ensure => link,
    target => $boxen::config::repodir
  }

  repository { "${people::fredoliveira::params::my_projects}/disruption/dashboard.io":
    source => 'DisruptionCorporation/dashboard.io',
    require => File[$people::fredoliveira::params::my_projects]
  }

  repository { "${people::fredoliveira::params::my_projects}/disruption/indicate.io":
    source => 'DisruptionCorporation/indicate.io',
    require => File[$people::fredoliveira::params::my_projects]
  }
}