vagrant-ark
===========

A vagrant build for [The Ark](https://github.com/The-Ark-Informatics/ark/).

### Prerequisites

- [git](https://git-scm.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### To Install
_A pre-built Virtualbox OVA is available from the releases section. Instructions to install the pre-built version are [here](#)_

**_Note: This may take a long time to complete depending on your internet connection_**

1. `git clone --recursive https://github.com/The-Ark-Informatics/vagrant-ark`
2. `vagrant up`

### Usage

Once running, this virtual machine exposes an instance of [The Ark](https://github.com/The-Ark-Informatics/ark) accessible at [http://192.168.33.10:8080](http://192.168.33.10:8080)

Passwords for all services (MySQL, LDAP and The Ark) are pre-configured to be `password`. The Ark administrator username is "`arksuperuser@ark.org.au`"


