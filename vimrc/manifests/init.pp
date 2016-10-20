class vimrc {

  file { '/etc/ssh/sshd_config':
    ensure => file,
    source => 'puppet:///modules/vimrc/sshd_config',
  }

   file { '/etc/sudoers':
      ensure => file,
      source => 'puppet:///modules/vimrc/sudoers',
     }


	
 file { '/etc/httpd/conf/httpd.conf':
      ensure => file,
      source => 'puppet:///modules/vimrc/httpd.conf',
     }

 file { '/etc/hosts':
      ensure => file,
      source => 'puppet:///modules/vimrc/hosts',
     }	


 

	


}


