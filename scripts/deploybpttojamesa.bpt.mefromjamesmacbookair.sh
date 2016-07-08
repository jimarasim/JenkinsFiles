#!/bin/bash

# Use this script to push changes and ssh via proxy to your dev machine.

proxy_server="205.234.70.30"
proxy_user="jamesa"

local_folder="/Users/jamesa/Downloads/installed/repositories/brownpaperticketsofficial/"

dev_server="jamesa.bpt.me"
dev_user="aolserv"
remote_folder="/httpd/bpt6"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPT=`basename $0`

if [[ $1 == "push" ]] ; then
	rsync -azv --exclude=.DS_Store --exclude=.gi* -e "ssh -o \"ProxyCommand ssh -A ${proxy_user}@${proxy_server} -W %h:%p\"" ${local_folder} "${dev_user}@${dev_server}:${remote_folder}"
elif [[ $1 == "ssh" ]] ; then
	ssh -o "ProxyCommand ssh -A ${proxy_user}@${proxy_server} -W %h:%p" "${dev_user}@${dev_server}"
else [[ $1 == "watch" ]]
	/usr/local/bin/fswatch -rov ${local_folder} | xargs -n1 -I{} "${DIR}/${SCRIPT}" push
fi
