class php {
	$phpPackages = ['php5', 'php5-cli', 'php5-mysql', 'php-pear', 'php5-dev', 'php5-gd', 'php5-mcrypt', 'libapache2-mod-php5']
	package { $phpPackages:
		ensure => present,
		require => Class['system-update']
	}	
}