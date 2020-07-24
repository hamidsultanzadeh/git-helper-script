#!/bin/bash

echo "Your local branchs : "

eval "git branch"

command_array[0]='git add .'
command_array[1]='git commit -m'
command_array[2]='git push'

echo -n "Type commit name : "
read commitName
n=1
for i in "${command_array[@]}"; do
if [[ $n -eq 2 ]]
then
	eval "$i '$commitName'"
else
	eval "$i"
fi
n=$((n+1))
done
