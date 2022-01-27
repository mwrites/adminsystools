#/usr/bin/env bash

# In Remote Server
# realpath file.txt

if [ $# -lt 3 ]; then
    echo ''
    echo 'Usage: [remote-machine] "[command]"'
    echo ''
    echo 'Example: ./pbcopy_to_local.sh centos-us1 cat /root/log.txt'
    echo 'Example: ./pbcopy_to_local.sh centos-us1 ls .'
    echo ''
    exit 1;
fi

ssh $1 "$2 $3" | pbcopy
