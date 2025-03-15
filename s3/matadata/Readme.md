## Create bucket 

``` sh
aws s3 mb s3://prem-metadata-bucket

```

## create file 

``` sh
echo "Hello prem " >  example.txt

```

## upload the file with meta data
``` sh

aws s3api put-object --bucket prem-metadata-bucket  --key example.txt --metadata createdBy=prem

```
## Get the object 

```sh
aws s3api head-object --bucket prem-metadata-bucket  --key example.txt

```