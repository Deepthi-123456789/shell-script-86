#!/bin/bash

ID=$(id -u)

if [ $id -ne 0 ]
then
echo "not a root user"
exit 1
fi

validate()
{

if [ $1 -ne 0 ]
then
echo "installation of $2 is failuer"
exit 1
else 
echo "installation of $2 done"
fi

}

dnf install mysql -y
validate() $? "mysql"

dnf install nginx -y
validate() $? "nginx"
