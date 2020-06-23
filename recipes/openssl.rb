#
# Cookbook Name:: init
# Recipe:: openssl
#
# Copyright 2016, SymoCode
#
# All rights reserved - Do Not Redistribute
#

script 'openssl' do
	interpreter 'bash'
	user 'root'
	cwd '/tmp'
	code <<-EOH
	wget "#{node['symocode']['openssl_url']}"
  tar xf #{node['symocode']['openssl_name']}
  cd openssl-#{node['symocode']['openssl_version']}
	./config --prefix=/usr --openssldir=/usr/local/openssl shared
  make
	make test
	make install
	EOH
	not_if { ::File.directory?("/tmp/openssl-#{node['symocode']['openssl_version']}") }
end
