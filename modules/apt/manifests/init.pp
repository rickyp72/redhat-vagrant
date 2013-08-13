class apt {
	file {'/etc/apt/sources.list':
	source => 'puppet:///modules/apt/debian_sources.list',
	owner => 'root',
	group => 'root',
	mode => '644',
}
}