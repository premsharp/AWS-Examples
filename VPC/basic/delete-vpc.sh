#!/bin/bash


# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Error: No argument provided."
    echo "Usage: $0 <VPC ID>"
else
    export VPC_ID="$1" 
fi

# Detach IGW
aws ec2 detach-internet-gateway --internet-gateway-id $IGW_ID --vpc-id  $VPC_ID

# Delete IGW

aws ec2 delete-internet-gateway --internet-gateway-id $IGW_ID

# delete VPC

aws ec2 delete-vpc --vpc-id $VPC_ID