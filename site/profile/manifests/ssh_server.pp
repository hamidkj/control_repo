class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZ/WYRAkmKqJMDtoO5f0Nro2AW/ny5EH4ME9hPV8MwGLD3sAjzYrc2ABSyn66ouDVX5mhLGjTbQGtLjAgrfgMHziBN410ThShJZXOtNVBMGG5zkvWle1mhDmeUPCt4HmFutdrSAlIcu0+7oy8jAqcIHX6WcXmHJb1SAWW4vMDA5c72nFFQjIrm/xgkOORFc/X/pZTvWGpbXlEpx9NRcbL+5uBPUeYyo9D5DNRQkz/mdo9uQOwjR1gqTaFAsjOnYsvnunG/fU+f+WqJCrLzXT0KaS9WOenqL9xz8bm1K/TPQ7ac5klyiqGwzJwK07z67Sp8nxUiw0YYJ9t19TtN1lEp',
	}  
}
