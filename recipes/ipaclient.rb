#
# Cookbook Name:: init
# Recipe:: ipaclient
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

package 'ipa-client'

execute 'ipa-client' do
	command 'echo -e "yes\nyes\n" | ipa-client-install --mkhomedir --domain symocode.com --server freeipa.symocode.com --realm SYMOCODE.COM --principal=admin --password=Patrykj23!'
	not_if { ::File.exists?("/etc/ipa/ca.crt") } 
end
