#
# Cookbook Name:: init
# Recipe:: colorprompt
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

template '/etc/colorprompt.sh' do
	source 'colorprompt.sh.erb'
	user 'root'
	group 'root'
	mode '0755'
  # Next time when ran chef it will check a below file and override it.
	variables(:allow_override => 'All')
end

template '/etc/bashrc' do
	source 'bashrc.erb'
	user 'root'
	group 'root'
	mode '0644'
end