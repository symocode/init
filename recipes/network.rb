#
# Cookbook Name:: init
# Recipe:: network
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

template '/etc/sysconfig/network' do
	source 'network.erb'
	user 'root'
	group 'root'
	mode '0644'
end

template '/etc/hosts' do
	source 'hosts.erb'
	user 'root'
	group 'root'
	mode '0644'
end
