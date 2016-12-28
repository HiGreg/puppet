$puppetserver = 'zabbix-server'
node 'client1'{
 include  motd
 include pe_mco_shell_agent
}
node 'client2'{
 include  motd
 include  pe_mco_shell_agent 
}
node 'zabbix-server'{
 include motd
 include pe_mco_shell_agent 
 }


