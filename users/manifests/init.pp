class users{

  

  group { 'sysadmin':
          ensure => 'present',
   }
  group { 'cars':
          ensure => 'present',
   }

	user{'becca':
	    ensure => present,
	   home => '/home/becca',
      comment => 'becca',
	    password => pw_hash('becca', 'SHA-512', 'mysalt'),
	    uid => '140',
      groups => ['sysadmin','cars'],
    	shell => '/bin/bash',	
	}


}

