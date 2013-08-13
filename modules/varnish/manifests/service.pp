class varnish::service {
	service {'varnish':
		ensure => running,
		enable => true,
		require => Class["varnish::install"],
	}
}