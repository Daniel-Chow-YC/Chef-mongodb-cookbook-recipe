#
# Cookbook:: mongo
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mongo::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    # it 'should install apt from a recipe' do
    #   expect(chef_run).to include_recipe 'apt'
    # end
    #
    # it 'should install sc-mongodb from a recipe' do
    #   expect(chef_run).to include_recipe 'sc-mongodb'
    # end

    it 'should install mongodb' do
      expect(chef_run).to install_package ('mongodb-org')
    end

    # describe packages(/mongodb/) do
    #   its('versions') { should cmp '3.2' }
    # end

  end

  # context 'When all attributes are default, on CentOS 7' do
  #   # for a complete list of available platforms and versions see:
  #   # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  #   platform 'centos', '7'
  #
  #   it 'converges successfully' do
  #     expect { chef_run }.to_not raise_error
  #   end
  # end
end
