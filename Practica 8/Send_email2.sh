#!/bin/bash/

SUBJECT=$1
RECEIVER=$2
TEXT=$3

SERVER_NAME=kali
SENDER=$(whoami)
USER="noreply"

[[ -z $1 ]] && SUJECT="Notification from $SENDER on server $SERVER_NAME"
[[ -z $2 ]] && RECEIVER="another_config_email_addresss"
[[ -z $3 ]] && TEXT="no text content"

MAIL_TXT = "subject: $SUBJECT\nFrom: $SENDER\nTo: $RECEIVER\n\n$TEXT"
echo -e $MAIL_TXT | sendmail -t
exit $?
