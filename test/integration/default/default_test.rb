# InSpec test for recipe mongo::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(27017) do
  it { should be_listening }
end

# THIS TEST IS FOR THE BASH COMMAND WAY OF INSTALLING MONGODB
describe service 'mongod' do
  it { should be_running }
  it { should be_enabled }
end

describe package 'mongodb-org' do
  it { should be_installed}
  its("version"){ should match /3\./}
end

## THIS TEST IS FOR THE CHEF WAY OF INSTALLING MongoDB
# describe service 'mongodb' do
#   it { should be_enabled }
# end
