#!/bin/bash

echo "Disk Usage"
DISK=(df -h)

if [ -d /Documents/devops/devops-notes/practice/my_project ]
then
	echo "The project directory exists"
else
	echo "The project directory was not found"

fi


