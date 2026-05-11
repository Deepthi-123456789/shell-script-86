#!/bin/bash

ID=$(id -u)
#services=(mysql,nginx)

if [ $ID -ne 0 ]
then
echo "not a root user"
exit 1
else
echo "root user"
fi

validate(){
if [ $1 -ne 0 ]
then
echo -e "installation of $2 is \e[31m failuer \e[0m"
exit 1
else
echo -e "installation of $2 is \e[32m successful \e[0m"
fi
}

for i in $@
do
dnf list installed$i
if [ $? -ne 0 ]
then
echo "installation of $i"
dnf install $i -y
validate $? "$i"
else
echo "$i is already installed"
fi
done