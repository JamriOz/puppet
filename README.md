#Puppet Code

This repository has a puppet enterprise configuration.

The configuration has been five modules as show below 

##debugging
debugging module is used to print message whenever the agent is running 

##packages
packages module is dealing with installing modules and keep track of their state

##vimrc
vimrc module is dealing with changing any configration files, it has been set currently to configure 
1- hosts : adding new host record for  record for usap.rmit.edu.au is pointed to 131.170.1.1
2 - httpd.conf : changing the default root document
3 - sshd_config : disabling the root login
4 - sudoers : allowing becca to sudo 

##users

user module is dealing with creating users and assoicating them to groups

##web
web module is dealing with configuring template using ERB and ensuring its presents on apache server 

puppetCode/
├── debugging 
│   ├── examples
│   │   └── init.pp
│   └── manifests
│       └── init.pp
├── packages
│   ├── examples
│   │   └── pkg.pp
│   └── manifests
│       └── pkg.pp
├── users
│   ├── examples
│   │   └── init.pp
│   └── manifests
│       └── init.pp
├── vimrc
│   ├── examples
│   │   └── init.pp
│   ├── files
│   │   ├── hosts
│   │   ├── httpd.conf
│   │   ├── sshd_config
│   │   └── sudoers
│   └── manifests
│       └── init.pp
└── web
    ├── examples
    │   └── init.pp
    ├── manifests
    │   └── init.pp
    └── templates
        └── index.html.erb
