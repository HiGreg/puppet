class pe_mco_shell_agent::params   {
  case $::kernel {

    'windows' : {
      $owner   = undef
      $group   = undef
      $mode    = undef
      $service = undef
      $libdir  = 'C:/ProgramData/PuppetLabs/mcollective/plugins'
    }

    'Linux' : {
      $owner  = 'root'
      $group  = 'root'
      $mode   = '0644'
   
 
     exec {'make mcollective directory':
     command => "mkdir -p  /opt/puppet/libexec/mcollective",
     #onlyif => "test  -d /opt/puppet",
     path => "/usr/bin:/usr/sbin:/bin"  
        }

      if versioncmp($::puppetversion, '4') < 0 {
        $service = 'pe-mcollective'
        $libdir  =  "/opt/puppet/libexec/mcollective" 
      } else {
        $service = 'mcollective'
        $libdir  = "/opt/puppet/libexec/mcollective"
      }
    }

    default : {
      fail("The ${::kernel} kernel is not supported by the ${module_name} module")
    }
  }

}
