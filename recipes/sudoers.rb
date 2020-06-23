#
# Cookbook Name:: init
# Recipe:: sudoers
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

template '/etc/sudoers' do
	source 'sudoers.erb'
	user 'root'
	group 'root'
	mode '0440'
	# Next time when ran chef it will check a below file and override it.
	variables(:allow_override => 'All')
end
