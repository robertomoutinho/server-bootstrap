# adjust clock and timezone
default['system']['timezone'] = 'America/Sao_Paulo'
default['ntp']['servers'] = ['a.ntp.br', 'b.ntp.br', 'c.ntp.br', 'a.st1.ntp.br', 'b.st1.ntp.br', 'c.st1.ntp.br', 'd.st1.ntp.br']

# ssh hardening
default['openssh']['server']['allow_agent_forwarding'] = 'no'
default['openssh']['server']['allow_tcp_forwarding'] = 'no'
default['openssh']['server']['client_alive_count_max'] = '0'
default['openssh']['server']['client_alive_interval'] = '600'
default['openssh']['server']['ignore_user_known_hosts'] = 'yes'
default['openssh']['server']['login_grace_time'] = '30s'
default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['permit_root_login'] = 'no'
default['openssh']['server']['rsa_authentication'] = 'no'
