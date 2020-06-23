#
# Cookbook Name:: init
# Recipe:: openssh
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

# Declare IPTables as a service in Chef to run 'notifies' action

service 'sshd' do
	action :nothing
end

script 'openssh' do
	interpreter 'bash'
	user 'root'
	cwd '/tmp'
	code <<-EOH
		wget "#{node['symocode']['openssh_url']}"
		tar xf #{node['symocode']['openssh_name']}
		cd openssh-#{node['symocode']['openssh_version']}
		./configure --prefix=/usr --sysconfdir=/etc/ssh --with-pam --with-ssl-dir=/usr/local/openssl/lib
		make
		make install
		EOH
	not_if { ::File.directory?("/tmp/openssh-#{node['symocode']['openssh_version']}") }
end

template '/etc/ssh/sshd_config' do
	source 'sshd_config.erb'
	user 'root'
	group 'root'
	mode '0600'
	notifies :restart, 'service[sshd]', :immediately
end
