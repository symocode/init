#
# Cookbook Name:: init
# Recipe:: ntp
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

service 'ntpd' do
	action [:start, :enable]
end
