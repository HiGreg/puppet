class motd::tmpfile {

                  file{'/tmp/xxlog':
                  content => template("motd/hosts.erb"), 
}
}
