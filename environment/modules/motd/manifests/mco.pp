class motd::mco{
	service{'mcollective':
       name => mcollective,   
       ensure => true,            
}

}
