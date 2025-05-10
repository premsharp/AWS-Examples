## Create the use witth no permission

We need to create a new user with no apersmission and generate out acces keys

```sh

aws iam create-user --user-name prem-sts-user

aws iam create-access-key --user-name prem-sts-user --output table

```aws 

## IAM polcy to access the cloud formation cloud formation 

```sh 
aws iam put-user-policy \
    --user-name prem-sts-user \
    --policy-name cloud-formation-policy \
    --policy-document file://policy.json 


    aws iam get-user-policy \
    --user-name prem-sts-user \
    --policy-name cloud-formation-policy

    aws iam delete-policy \
    --policy-arn arn:aws:iam::713881802034:policy/cloud-formation-policy

```

## create a Role 

We need to crate a role and resource that will acess the resource 

Test who your are :
```sh
aws sts get-caller-identity --profile prem-sts

```

## use new user credntials and assume role
```sh
aws sts assume-role \
--role-arn arn:aws:iam::713881802034:role/my-sts-prem-stack-stsRole-cpICKqTOmtXz \
--role-session-name s3-sts-prem \
--profile prem-sts
```

## delete user 
```sh
aws iam delete-user --user-name prem-sts-user

aws sts get-caller-identity --profile Assumed

aws s3 ls --profile Assumed

```

## clean the resource 

```sh

aws cloudformation delete-stack \
    --stack-name my-sts-prem-stack


## Delete user - before that we need to follow all procedure

# check user has attached policy if yes delete it 
aws iam list-attached-user-policies --user-name prem-sts-user
aws iam detach-user-policy --user-name prem-sts-user --policy-arn <policy-arn>

# check user has inline policy if yes delete it 
aws iam list-user-policies --user-name prem-sts-user
aws iam delete-user-policy --user-name prem-sts-user --policy-name cloud-formation-policy

# check user has accesskey if yes delete it
aws iam list-access-keys --user-name prem-sts-user
aws iam delete-access-key --user-name prem-sts-user --access-key-id AKIA2MNVL2UZI7IIFYDF


aws iam delete-user --user-name prem-sts-user


```