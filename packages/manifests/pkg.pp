class packages::pkg {

	package { 'openssh':
             ensure => present,
        }

        package {'httpd':

                ensure => present,
        }

	


	 package {'strace':

                ensure => present,
        }


	 package {'sudo':

                ensure => present,
        }

	 package {'mysql':

                ensure => present,
        }

	service { 'httpd.service':
                ensure => running,
                enable => true,
		require  => [ Package['httpd'], File['/etc/httpd/conf/httpd.conf'],],
        }

	 service { 'mariadb.service':
                ensure => running,
                enable => true,
                require  => Package['mysql'],
        }



	service { 'sshd':
               ensure  => running,
               require => [
               Package['openssh'],
               File['/etc/ssh/sshd_config'],
                ],
        }


}
