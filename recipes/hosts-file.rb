#
# Cookbook Name:: server-bootstrap
# Recipe:: hosts-file
#
# Copyright (C) 2014 Roberto Moutinho
#
# All rights reserved - Do Not Redistribute

# localhost

hostsfile_entry '127.0.0.1' do
  hostname  "#{node['hostname']} localhost"
  unique    true
  action    :create
end
