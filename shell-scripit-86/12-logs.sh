#!/bin/bash
LOGFILE="/var/log/shellscripit.log"
mkdir -p $LOGFILE


ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
echo "not a root user"
exit 1
fi

validate()
{
if [ $1 -ne 0 ]
then
echo -e "installation of $2 is $R failuer $N"
exit 1
else
echo -e "installation of $2 $G successful $N"
fi

}

dnf install mysql -y &>> $LOGFILE 
validate $? "mysql"