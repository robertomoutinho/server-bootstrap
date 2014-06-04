#
# Cookbook Name:: server-bootstrap
# Recipe:: adjust-clock
#
# Copyright (C) 2014 Roberto Moutinho
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'system::timezone'
include_recipe 'ntp::default'
