#
# Cookbook Name:: init
# Recipe:: iptables
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

service 'iptables' do
	action  :nothing
end

template '/etc/sysconfig/iptables' do
    source 'iptables.erb'
	user 'root'
	group 'root'
	mode '0640'
	notifies :restart, 'service[iptables]', :immediately
end
