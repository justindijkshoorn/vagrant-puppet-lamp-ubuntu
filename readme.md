# Vagrant, Puppet, LAMP setup

## Instructions
Before diving into your first project, please [install Vagrant](http://docs.vagrantup.com/v2/installation/). And because we'll be using [VirtualBox](http://www.virtualbox.org/) as our provider, please install that as well.

When installed navigate to the vagrant-puppet-lamp-ubuntu folder and run the following command

	$ vagrant up

This will automatically download the latest ubuntu server version for you from 

	$ https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box

After running the above command (vagrant up), you'll have a fully running virtual machine in VirtualBox running the latest Ubuntu Server 32-bit with a pre-installed LAMP stack. You can SSH into this machine with vagrant ssh, and when you're done playing around, you can remove all traces of it with vagrant destroy.

[Synced folders](http://docs.vagrantup.com/v2/synced-folders/index.html) is enabled to sync a folder on the host machine to the guest machine, allowing you to continue working on your project's files on your host machine, but use the resources in the guest machine to compile or run your project. You can see the working folder when you point your browser to

	$ http://localhost:8080

If everything works fine you should see index.php (phpinfo) from the www folder.

MySql username and password are both set to 'root'.