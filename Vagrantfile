# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.hostname = "vagrant-ark"

	config.vm.network "private_network", ip: "192.168.33.10"

	config.vm.synced_folder "src/ark", "/home/vagrant/ark"
	config.vm.synced_folder "webapps", "/var/lib/tomcat7/webapps"

	config.vm.provider "virtualbox" do |vb|
		vb.cpus = 4
		vb.memory = "2048"
	end

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "ark.pp"
		puppet.module_path = "puppet/modules"
	end

	config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

	config.vm.provision :shell, inline: "/bin/mount -t vboxsf -o uid=`id -u tomcat7`,gid=`id -g tomcat7` var_lib_tomcat7_webapps /var/lib/tomcat7/webapps", run: "always"

end
