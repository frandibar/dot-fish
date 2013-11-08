function ssh_appliance
    if $argv
        ssh -p 27 -o GSSAPIAuthentication=no -L3307:127.0.0.1:3306 coresec@$argv
    else
        ssh -p 27 -o GSSAPIAuthentication=no -L3307:127.0.0.1:3306 coresec@$192.168.148.112
    end
 end