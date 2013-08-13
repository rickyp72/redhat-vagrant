class nginx::install {
	
	exec { 'yum update':
	  command => '/usr/bin/yum update'
	}
	exec { 'epel':
	  command => '/usr/bin/rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm'
	}
	exec { 'rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm':
	  command => '/usr/bin/rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm'
	}
		package { 'httpd':
		ensure => absent,
		require => Exec['yum update'],
	}
	
	package { 'nginx':
	ensure => installed,
	#require => Package['httpd'],
	require => Exec['epel'],
	}
}

