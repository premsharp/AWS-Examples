## Create a Bucket

``` sh
aws s3 mb s3://prem-enc-work

```

## Create File to put the file using SSE-s3 encription

``` sh

touch hello.txt

echo "Hello World" > hello.txt

aws s3 cp hello.txt s3://prem-enc-work

```

## Put object of encription with KMS

```sh


aws s3api put-object \
    --bucket prem-enc-work \
    --key test.txt \
    --body test.txt \
	--server-side-encryption aws:kms \
    --ssekms-key-id 2dbf7b06-cb2a-4b80-95e0-220d0f2d67e1

```

## Put object of encription with SSE-C  ( Not worked)

```sh


export BASE64_ENCODED_KEY=$(openssl rand 32 || base64)
echo $BASE64_ENCODED_KEY

export MDF5_VALUE=$(echo $BASE64_ENCODED_KEY | md5sum | awk '{print $1}' | base64 -w0)
echo $MDF5_VALUE

aws s3api put-object \
    --bucket prem-enc-work \
    --key test2.txt \
    --body test2.txt \
    --sse-customer-algorithm AES256 \
    --sse-customer-key $BASE64_ENCODED_KEY \
    --sse-customer-key-md5 $MDF5_VALUE

```


## Remove Bucket 

```sh
aws s3 rb s3://prem-enc-work --force

```