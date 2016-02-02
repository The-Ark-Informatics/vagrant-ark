class mysql {
	package { ['mysql-client', 'mysql-server']:
		ensure => present,
		before => File['/etc/mysql/my.cnf'],
	}

	file { '/etc/mysql/my.cnf':
		ensure => file,
		owner => 'root',
		group => 'root',
		mode  => '0644',
		source => 'puppet:///modules/mysql/my.cnf';
	}

	exec { 'mysqladmin':
		command => '/usr/bin/mysqladmin -u root password password',
		require => [ Package['mysql-client'], Service['mysql'] ],
	}->
	exec { 'mysqladmin127':
		command => '/usr/bin/mysqladmin -u root password password -h 127.0.0.1',
		require => [ Package['mysql-client'], Service['mysql'] ],
	}

	service { 'mysql':
		ensure => running,
		require => [ Package['mysql-client'], Package['mysql-server'] ],
	}
}
