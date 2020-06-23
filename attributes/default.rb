#
# Attributes
#

# OpenSSH attributes
default['symocode']['openssh_version'] = "6.9p1"
default['symocode']['openssh_name'] = "openssh-#{node['symocode']['openssh_version']}.tar.gz"
default['symocode']['openssh_url'] = "http://openbsd.cs.toronto.edu/pub/OpenBSD/OpenSSH/portable/#{node['symocode']['openssh_name']}"

# OpenSSL attributes
default['symocode']['openssl_version'] = "1.0.2h"
default['symocode']['openssl_name']	= "openssl-#{node['symocode']['openssl_version']}.tar.gz"
default['symocode']['openssl_url']	= "https://www.openssl.org/source/#{node['symocode']['openssl_name']}"
