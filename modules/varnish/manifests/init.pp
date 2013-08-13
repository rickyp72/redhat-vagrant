class varnish {
	include varnish::install, varnish::service
	
	# package {'varnish':
	# 	ensure => present,
	# }

	# file {'/etc/varnish/default.vcl':
	# 	ensure => present,
	# 	source => 'puppet:///modules/varnish/test_default.vcl',
	# 	notify => Service["varnish"],
	# }
	
	# service {'varnish':
	# 	ensure => running,
	# }
	
}