class motd::puppet{

	file {'/etc/puppet/puppet.conf':

              ensure => file,
              content => template("motd/puppet.conf.erb"),
              notify => Service['puppet']

             }  

         service {'puppet':
            
              ensure => running,
              enable => true,
            }


}
