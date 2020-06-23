#
# Cookbook Name:: init
# Recipe:: postfix
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

package 'postfix' do
	action :install
end

service 'postfix' do
	action [:enable, :start]
end

template '/etc/postfix/main.cf' do
	source 'main.cf.erb'
	user 'root'
	group 'root'
	mode '0640'
	notifies :restart, 'service[postfix]', :immediately
end
