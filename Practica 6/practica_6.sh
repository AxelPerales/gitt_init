#!/bin/bash
ip address >> ip_address.txt
curl ifconfig.me >> ip_address.txt
nmap -sP 192.168.0.84/24 >> ip_address.txt 
echo  " Hola a todos !! "  | base64
base64 ip_address.txt > ip_address.encoded.txt
