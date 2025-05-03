
## Create Website 1

## Create Buckets

``` sh
aws s3 mb s3://prem-s3-cros-bucket

```

## Change block public access
``` sh
aws s3api put-public-access-block \
    --bucket prem-s3-cros-bucket \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

```


## Create Bucket policy 



```sh

touch policy.json

aws s3api put-bucket-policy --bucket prem-s3-cros-bucket --policy file://policy.json

```

## turn on static website hosting

```sh

touch website.json

aws s3api put-bucket-website --bucket prem-s3-cros-bucket --website-configuration file://website.json


```

## upload out index.html file and include a resource that would be cross - orgin 

```sh
touch index.html
touch error.html

aws s3 cp index.html s3://prem-s3-cros-bucket/index.html
aws s3 cp error.html s3://prem-s3-cros-bucket/error.html



```

## view the websire 

http://prem-s3-cros-bucket.s3-website-us-east-1.amazonaws.com/
http://prem-s3-cros-bucket.s3-website.us-east-1.amazonaws.com/


## Create Website 2

## Create Buckets

``` sh
aws s3 mb s3://prem-s3-cros-bucket-2

```

## Change block public access
``` sh
aws s3api put-public-access-block \
    --bucket prem-s3-cros-bucket-2 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

```


## Create Bucket policy 



```sh

touch policy.json

aws s3api put-bucket-policy --bucket prem-s3-cros-bucket-2 --policy file://website-policy2.json

```

## turn on static website hosting

```sh

touch website.json

aws s3api put-bucket-website --bucket prem-s3-cros-bucket-2 --website-configuration file://website2.json


```

## upload out index.html file and include a resource that would be cross - orgin 

```sh
touch index2.html
touch error2.html

aws s3 cp index2.html s3://prem-s3-cros-bucket-2/index2.html
aws s3 cp error2.html s3://prem-s3-cros-bucket-2/error2.html
aws s3 cp hello.js s3://prem-s3-cros-bucket-2/hello.js
```

## view the websire 

http://prem-s3-cros-bucket-2.s3-website-us-east-1.amazonaws.com/
http://prem-s3-cros-bucket-2.s3-website.us-east-1.amazonaws.com/


## create API gateway  mock API to test the end point 

https://g8wjxqdaw1.execute-api.us-east-1.amazonaws.com/prod

curl -X POST "https://g8wjxqdaw1.execute-api.us-east-1.amazonaws.com/prod" \
     -H "Content-Type: application/json" 


## set cours on the bucker 

aws s3api put-bucket-cors --bucket prem-s3-cros-bucket --cors-configuration file://cours.json

aws s3 cp cours.json s3://prem-s3-cros-bucket/cours.json


## Apply cource policy 