#
# Cookbook Name:: init
# Recipe:: nagios-client
#
# Copyright 2016, QuickPlay Media
#
# All rights reserved - Do Not Redistribute
#

yum_package ['nrpe','nagios-plugins','nagios-plugins-procs','nagios-plugins-disk','nagios-plugins-users','nagios-plugins-uptime','nagios-plugins-load'] do
        action :install
end

template '/etc/nagios/nrpe.cfg' do
        source 'nrpe.cfg.erb'
        user 'root'
        group 'root'
        mode '0660'
end

service 'nrpe' do
	action [:enable,:start]
end
