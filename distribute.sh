#!/bin/bash

USER="foo"
SCRIPT_FOLDER_NAME="Scripts"
BASH_PROFILE_NAME="bash_profile"

REMOTE_PATH="~/"
LOCAL_PATH="/Users/foo/Workspace/Tools/RemoteScripts/"

#Servers to which the scripts and bash profile will be distributed
SERVERS=("192.168.1.1-My station 1" "192.168.1.2-My station 2")


for ipName in "${SERVERS[@]}"
do	
	ip=$(echo $ipName | awk -F "-" '{print $1}')
	name=$(echo $ipName | awk -F "-" '{print $2}')
	
	echo "Distributing scripts to $name ($ip)"
	scp -r $LOCAL_PATH$SCRIPT_FOLDER_NAME $USER@$ip:$REMOTE_PATH
	scp $LOCAL_PATH$BASH_PROFILE_NAME $USER@$ip:"$REMOTE_PATH.$BASH_PROFILE_NAME"
	ssh $USER@$ip "chmod +x $REMOTE_PATH$SCRIPT_FOLDER_NAME/*" 
done

echo "Done"
