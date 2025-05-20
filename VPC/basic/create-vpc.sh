#!/bin/bash

# create out VPC

export VPC_ID=$(aws ec2 create-vpc \
    --cidr-block 10.0.0.0/16 \
    --region us-east-1 \
    --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=MyVpc}]' \
    --query Vpc.VpcId \
    --output text)

echo "VPC ID : $VPC_ID"

# Create IGW
export IGW_ID=$(aws ec2 create-internet-gateway --query InternetGateway.InternetGatewayId \
--output text)

echo "INTERNET GATEWAY ID : $IGW_ID"

# attache an IGW to VPC 
aws ec2 attach-internet-gateway --internet-gateway-id $VPC_ID --vpc-id $IGW_ID

# Create new Subnet

# explicty associate with subnet 

# add a route for our RT to IGW

