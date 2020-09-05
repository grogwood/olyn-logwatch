name 'olyn_logwatch'
maintainer 'Scott Richardson'
maintainer_email 'dev@grogwood.com'
chef_version '~> 16'
license 'GPL-3.0'
supports 'debian', '>= 10'
source_url 'https://gitlab.com/olyn/olyn_logwatch'
description 'Installs and configures logwatch'
version '1.0.2'

provides 'olyn_logwatch::default'
recipe 'olyn_logwatch::default', 'Installs and configures logwatch'

depends 'logwatch', '~> 2'
