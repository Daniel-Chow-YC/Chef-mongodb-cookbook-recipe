#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'apt'

# Add mongodb repo and key
# apt_repository 'mongodb' do
#   uri 'http://repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/3.2/multiverse/'
#   key 'https://www.mongodb.org/static/pgp/server-3.2.asc'
#   action :add
# end
#
# # Create a list file for MongoDB
# file '/etc/apt/sources.list.d/mongodb-org-3.2.list' do
#   content "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse"
#   mode '0755'
# end
#
# apt_update
#
# package 'mongodb' do
#   action :install
#   version '3.2.20'
# end
#
# # services
# service 'mongod' do
#   action [:start, :enable]
# end

## THIS CODE WORKS FOR MONGOD VERSION 3.2.20
# bash 'install_mongod' do
#   user 'root'
#   code <<-EOH
#   wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -
#   echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#   sudo apt-get update
#   sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
#   sudo systemctl restart mongod
#   sudo systemctl enable mongod.service
#   EOH
# end

package 'mongodb' do
  action :install
  # version '3.2.20'
end

# services
service 'mongodb' do
  action [:start, :enable]
end
