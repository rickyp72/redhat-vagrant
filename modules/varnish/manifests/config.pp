define varnish::config( $backend_address, $backend_port = 80, $daemon_ops_port = 6081 ){
	
	file {"/etc/varnish/default.vcl":
		content => template('varnish/default.vcl.erb'),
		require => Class["varnish::install"],
		notify => Class["varnish::service"],
	}
	
	file {"/etc/sysconfig/varnish":
		content => template('varnish/config_varnish.erb'),
		require => Class["varnish::install"],
		notify => Class["varnish::service"],
	}
}