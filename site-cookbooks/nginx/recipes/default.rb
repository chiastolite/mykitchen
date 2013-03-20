#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'nginx' do
  action :install
end

service 'nginx' do
  supports :restart => true
  action [:enable, :start]
end

template '/etc/nginx/nginx.conf' do
  user  'root'
  group 'root'
  mode '0644'
end
