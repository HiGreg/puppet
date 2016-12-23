$puppetserver = 'zabbix-server'
node 'client1'{ include  motd}
node 'client2'{ include  motd}
node 'zabbix-server'{ include motd
    file{'/tmp/xxx':
        ensure => file ,
        content => "$ipaddress"           
}

 }


