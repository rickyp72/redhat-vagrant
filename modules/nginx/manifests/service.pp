class nginx::service {
	service { 'nginx':
	ensure  => running,
	enable => true,
	restart => '/usr/sbin/service nginx reload',
	require => Class["nginx::install"],
	} 

}
