define nginx::vhost( $site_name, $port, $doc_root = $site_name ) {
         include nginx
         

	file { "/etc/nginx/sites-enabled/${site_name}":
           content => template('nginx/vhost.conf.erb'),
	require => Class["nginx::install"], 
           notify  => Class["nginx::service"],
         }
	
	File {
 		 owner => www-data,
 		 group => www-data,
 		 mode  => 644,
		}

	file { ['/data',
		"/data/${doc_root}"]:
		ensure => directory,
	}
	
	         file { "/data/${doc_root}/index.html":
                  require => File["/data/${doc_root}"],
                  source => 'puppet:///modules/nginx/index.html',
                  }
	
	file { '/etc/nginx/sites-enabled/default':
		ensure => absent,
	}
}
