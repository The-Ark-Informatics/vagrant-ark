class mount {
	#this class is used to remount the webapps folder in the virtual machine as it should have the tomcat7 user
	#permissions but vagrant won't let us set them as the users don't exist when it wants to create the shared folder
	
#	exec {
#		'umount /var/lib/tomcat7/webapps':
#			command => '/bin/umount /var/lib/tomcat7/webapps';
#	} -> 
	exec { 'mount /var/lib/tomcat7/webapps':
		command => '/bin/mount -t vboxsf -o uid=`id -u tomcat7`,gid=`id -g tomcat7` var_lib_tomcat7_webapps /var/lib/tomcat7/webapps'
	}
}
