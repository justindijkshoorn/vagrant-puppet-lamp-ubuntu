class mysql {
	$mysqlpw = 'root'

	package { 'mysql-server':
		ensure => present,
		require => Class['system-update']
	}

	service { 'mysql':
		ensure => running,
		require => Package['mysql-server']
	}

	exec { 'set-mysql-password':
		unless => 'mysqladmin -uroot -p$mysqlpw status',
		command => 'mysqladmin -uroot password $mysqlpw',
		require => Service['mysql']
	}
}