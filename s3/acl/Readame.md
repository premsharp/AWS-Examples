## Create Bucket 

```sh
aws s3api create-bucket --bucket prem-acl-example --region us-east-1
```


## Create File 
``` sh 
touch prem.txt

```

## put the file in S3 bucket
```sh

aws s3api put-object \
    --bucket prem-acl-example \
    --key my-dir/prem.txt \
    --body prem.txt

```

