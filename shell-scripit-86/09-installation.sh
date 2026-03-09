#!/bin/bash

ID=$(id -u)

if [ $id -ne 0 ]
then
echo "not a root user"
else
echo "root user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "mysql installation failed"
else
echo "mysql installation sucess"
fi