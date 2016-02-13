#!/bin/bash

# running as root?!
if [ ! -r /etc/passwd ]; then
        echo "Access denied to /etc/passwd. Using default EUID of 0 for root." 
        if [[ "$EUID" -ne "0" ]]; then
                dieWithError "This script must be run as root."
        fi
else
        uid_root=`grep -e ^root /etc/passwd | cut -f 3 -d:`
        if [[ "$EUID" -ne "$uid_root" ]]; then
                echo "Start installation as user root."
        fi
fi

