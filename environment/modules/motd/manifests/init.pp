class motd{
include motd::mco
include motd::puppet
class{ 'motd::tmpfile': }
 file {'/etc/motd':
	ensure => file,
        content => "*****************\n puppet----Greg\n*******************\n",
	}

}
