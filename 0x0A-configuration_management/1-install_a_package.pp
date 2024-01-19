#!/usr/bin/pup
# Install python3-pip, flask 2.1.0, and werkzeug 2.1.1.

package { 
	'python3-pip':
	ensure => present;
}

exe { 'pip3 install flask==2.1.0':
	path => '/usr/bin',
	unless => 'pip3 show flask | grep Version | grep 2.1.0',
	require => package['python3-pip'];
}

exe { 'pip3 install werkzeug==2.1.1':
	path => '/usr/bin',
	unless => 'pip3 show werkzeug | grep Version | grep 2.1.1',
	require => package['python3-pip'],
}
