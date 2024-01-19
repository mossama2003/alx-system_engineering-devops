#!/usr/bin/pup
# Ensure python3-pip is installed
<<<<<<< HEAD

=======
>>>>>>> 77b9912470340310a278d4248d94b6c13764a508
package { 'python3-pip':
  ensure => installed,
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require => package['python3-pip'],
}

package { 'werkzeug':
  ensure => '2.0.1',
  provider => 'pip',
  require => package['python3-pip'],
}
