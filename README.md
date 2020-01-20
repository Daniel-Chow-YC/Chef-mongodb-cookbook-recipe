# Mongo

## Summary
We need to create a reusable chef cookbook for installing and managing mongodb servers.

## Tasks
- Create a new cookbook called mongo

- Create a ChefSpec suite that tests for the following:

Sources list is updated
mongodb-org is added to the sources list ( there is a matcher for this )
MongoDB will be installed

- And InSpec tests for the following:

MongoDB is installed
MongoDB is version 3.*
Create a recipe that installs and configures this cookbook correctly to pass all these tests.

## SSH into VM
- vagrant global-status
- vagrant ssh <id_number>
- Or
  - kitchen login

## metadata file
- Import cookbooks from online

## Test on AWS
- aws configure
-  KITCHEN_YAML=kitchen.cloud.yml kitchen test

## Using chef syntax:
apt_repository 'mongodb-org' do
  uri 'http://repo.mongodb.org/apt/ubuntu/'
  distribution 'xenial/mongodb-org/3.2'
  components ['multiverse']
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key 'EA312927'
  action :add
end


package 'mongodb-org' do
  options '--allow-unauthenticated'
  action :install
end
