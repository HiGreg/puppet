class motd::mco{
    package {'mcollective':
            ensure => present,
            }->
    file {'/etc/mcollective/server.cfg':
           ensure => file,
           source => "puppet:///modules/motd/mcollective/server.cfg",
           force => yes,
          }~>   
    service{'mcollective':
       name => mcollective,   
       ensure => true,            
      }

}
