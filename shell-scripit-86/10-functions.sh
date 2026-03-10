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
echo -e "installation of $2 is \e[31m failuer"
exit 1
else 
echo -e "installation of $2 \e[32m successful \e[0m"
fi

}

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"
