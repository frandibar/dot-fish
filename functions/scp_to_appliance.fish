function scp_to_appliance
    # usage: scp_to_appliance [FILE] [IP]
    # if IP is not specified, then use a default one
    set ip "10.80.129.173"
    if test 1 -lt (count $argv)
        set ip $argv[(count $argv)]
    end
    scp -P 27 -o GSSAPIAuthentication=no $argv[1] coresec@$ip:
end