#
# Cookbook Name:: server-bootstrap
# Recipe:: ssh-hardening
#
# Copyright (C) 2014 Roberto Moutinho
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'openssh::default'
include_recipe 'openssh::iptables'
