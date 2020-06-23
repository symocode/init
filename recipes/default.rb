#
# Cookbook Name:: init
# Recipe:: default
#
# Copyright 2016 SymoCode
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'init::yum'
#include_recipe 'init::user'
include_recipe 'init::sudoers'
include_recipe 'init::openssh'
include_recipe 'init::openssl'
include_recipe 'init::network'
#include_recipe 'init::selinux'
include_recipe 'init::aide'
include_recipe 'init::postfix'
include_recipe 'init::colorprompt'
include_recipe 'init::iptables'
include_recipe 'init::ipaclient'
