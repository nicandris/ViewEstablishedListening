#!/bin/bash

function ip {
         echo $SSH_CLIENT | awk '{ print $1}'
}

function netstatpeanut {
        sudo netstat -peanut
}

function grepcolored (){
        netstatpeanut | grep --color -E "ESTABLISHED|$"
}

myip=$(ip)
text="Your current IP Address is:  "

echo
echo -e "$text\e[31m $myip\e[0m"
echo

grepcolored $myip
