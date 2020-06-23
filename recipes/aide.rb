#
# Cookbook Name:: init
# Recipe:: aide
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

package "aide" do
	action :install
end

template '/etc/aide.conf' do
	source 'aide.conf.erb'
	user 'root'
	group 'root'
	mode '0600'
end

template '/etc/cron.daily/aide' do
	source 'aide.erb'
	user 'root'
	group 'root'
	mode '0600'
end
