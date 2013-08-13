class varnish::install {
	
	exec { 'apt-get update':
	  command => '/usr/bin/apt-get update'
	}
	
	package {'varnish':
		ensure => present,
		require => Exec['apt-get update'],
	}
	
	
	
}