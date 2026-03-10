#!/bin/bash

ID=$(id -u)

if [ $id -ne 0 ]
then
echo "not a root user"
exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "mysql installation failed"
exit 1
else
echo "mysql installation sucess"
fi