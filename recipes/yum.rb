#
# Cookbook Name:: init
# Recipe:: yum
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

# Deleting unnecessary repositories
file '/etc/yum.repos.d/CentOS-Debuginfo.repo' do
	action :delete
	only_if { File.exists? ('CentOS-Debuginfo') }
end

file '/etc/yum.repos.d/CentOS-fasttrack.repo' do
	action :delete
	only_if { File.exists? ('CentOS-fasttrack') }
end

file '/etc/yum.repos.d/CentOS-Vault.repo' do
	action :delete
	only_if { File.exists? ('CentOS-Vault') }
end

file '/etc/yum.repos.d/CentOS-Media.repo' do
	action :delete
	only_if { File.exists? ('CentOS-Media') }
end

# Removing unwanted packages
yum_package ['telnet', 'rsh-server', 'nis', 'tftp', 'ftp', 'talk', 'xinetd', 'bind', 'bind-chroot', 'cronie-anacron'] do
	action :remove
end

# Install all required packages such as : ntp vim lsof wget cronie-noanacron gcc gcc-c++ make zlib-devel pcre-devel openssl-devel pam-devel perl
yum_package ['unzip', 'ntp', 'vim', 'lsof', 'wget', 'gcc', 'gcc-c++', 'make', 'zlib-devel', 'pcre-devel', 'openssl-devel', 'pam-devel', 'perl', 'cronie-noanacron', ] do
	action :install
end

# Add Epel packages
yum_package ['epel-release'] do
	action :install
end

# Run 'yum update'
bash 'yum_update' do
	code <<-EOH
	yum update --skip-broken -y
	EOH
end
