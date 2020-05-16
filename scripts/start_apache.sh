#!/bin/bash
a=$(date "+%Y%m%d%H%M%S")
service apache2 start;
if [$? = 0];
then
aws ec2 create-image --instance-id i-090ffb35156dbd4eb --name "My server_$a" --description "An AMI for my server" --no-reboot
fi
