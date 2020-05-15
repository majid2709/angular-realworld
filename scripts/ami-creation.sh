#!/bin/bash
a=$(date "+%Y%m%d")
aws ec2 create-image --instance-id i-090ffb35156dbd4eb --name "My server_$a" --description "An AMI for my server"
