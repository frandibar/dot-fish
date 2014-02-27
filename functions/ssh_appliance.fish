function ssh_appliance
    # usage: ssh_appliance [IP]
    # if IP is not specified, then use a default one
    set ip "10.80.129.173"
    if not set -q $argv
        set ip $argv[1]
    end
    ssh -p 27 -o GSSAPIAuthentication=no -L3307:127.0.0.1:3306 coresec@$ip
end