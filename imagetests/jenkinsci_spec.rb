# Test docker
describe port(8080) do
  it { should be_listening }
end

describe docker_container('jenkinsci') do
  it { should exist }
end
