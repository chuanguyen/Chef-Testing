# InSpec test for recipe webserver_test::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package('httpd') do
  it { should be_installed}
end

describe service('httpd') do
  it { should be_running}
end

describe command('curl localhost') do
  its('stdout') { should match /hello/ }
end

describe port(80) do
  it { should be_listening }
end
