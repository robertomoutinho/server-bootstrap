require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe file('/etc/ssh/sshd_config') do
  its(:content) { should match /ChallengeResponseAuthentication no/ }
  its(:content) { should match /UsePAM yes/ }
  its(:content) { should match /AllowAgentForwarding no/ }
  its(:content) { should match /AllowTcpForwarding no/ }
  its(:content) { should match /ClientAliveCountMax 0/ }
  its(:content) { should match /ClientAliveInterval 600/ }
  its(:content) { should match /IgnoreUserKnownHosts yes/ }
  its(:content) { should match /LoginGraceTime 30s/ }
  its(:content) { should match /PasswordAuthentication no/ }
  its(:content) { should match /PermitRootLogin no/ }
  its(:content) { should match /RsaAuthentication no/ }
end
