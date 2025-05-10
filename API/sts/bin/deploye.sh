#!/bin/bash

aws cloudformation deploy \
--template-file template.yaml \
--stack-name my-sts-prem-stack \
--capabilities CAPABILITY_IAM \
--region us-east-1 