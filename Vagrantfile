Vagrant.configure("2") do |config|

	# Global box configuration -------------------------------------
	
	# config.vm.provision :shell, :inline => "echo This is host $HOSTNAME"
	# config.vm.provision :shell, :inline => "rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm"
	# config.vm.provision :shell, :inline => "rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm"
	# #config.vm.provision :puppet
	# config.vbguest.auto_update = true
	
	#----------------------------------------------------------------- 
	# Puppet configuration ---------------------------------------
	
	config.vm.provision :puppet do |puppet|
    	puppet.manifests_path = "manifests"
		puppet.module_path = "modules"
    	puppet.manifest_file = "site.pp"
  	end
	#---------------------------------------------------------------
	# Individual box configuration -----------------------------------
	
	config.vm.define :nginx1 do |nginx1|
	nginx1.vm.box = "centos6_4_64"
	config.vm.hostname = "nginx1.localdomain"
	config.vm.network :private_network, ip: "192.168.50.20"
	#config.vm.network :forwarded_port, guest: 8080, host: 3000
	end

	config.vm.define :varnish1 do |varnish1|
	 varnish1.vm.box = "centos6_4_64"
	config.vm.hostname = "varnish1.localdomain"
	config.vm.network :private_network, ip: "192.168.50.21"	
	config.vm.network :forwarded_port, guest: 80, host: 3000
	end

	config.vm.define :ubuntu1 do |ubuntu1|
	 ubuntu1.vm.box = "centos6_4_64"
	config.vm.hostname = "ubuntu1.localdomain"
	config.vm.network :private_network, ip: "192.168.50.22"
	end
	#---------------------------------------------------------------

end