name             'server-bootstrap'
maintainer       'Roberto Moutinho'
maintainer_email 'robertomoutinho@gmail.com'
license          'All rights reserved'
description      'Installs/Configures server-bootstrap recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'ohai', '~> 2.0.0'
depends 'hostsfile', '~> 2.4.4'
depends 'system', '~> 0.3.2'
depends 'ntp', '~> 1.6.2'
depends 'openssh', '~> 1.3.4'

recipe 'server-bootstrap', 'Empty placeholder'
recipe 'server-bootstrap::hosts-file', 'Add node.hostname to /etc/hosts file'
recipe 'server-bootstrap::adjust-clock', 'Set timezone and ntp pool'
recipe 'server-bootstrap::ssh-hardening', 'OpenSSH hardening'

supports 'ubuntu', '= 12.04'
supports 'centos', '>= 5.3'
supports 'redhat', '>= 5.3'
