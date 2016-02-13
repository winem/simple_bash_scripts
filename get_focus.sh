#!/bin/bash

# simple script to get the focus of the admin if something needs attention in huge scripts with a lot of output 
getFocus() {
        msg=$1
        msg_length=${#msg}
        hash_length=`expr $msg_length + 20`
        # some magic is happening below... the following lines are responsible to create a banner like this: 
        ########################
        ########  $msg  ########
        ########################
        printf -v msg_tag '%*s' "$hash_length"
        msg_to_echo=${msg_tag// /#}
        # echo 2 empty lines above the banner 
        echo 
        echo
        echo $msg_to_echo
        echo "########  $msg  ########"
        echo $msg_to_echo
}

