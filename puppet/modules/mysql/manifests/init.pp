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
}
