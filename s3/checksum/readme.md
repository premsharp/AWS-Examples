## create new bucket

```md

aws s3 mb s3://prem-s3check-sum

```

## Create myfile to do check sum

```md

echo "The test file " > myfile.txt
```

## To get check sum for using poweshall and linux command 
```md
Windows:  Get-FileHash -Path "C:\Files\example.txt" -Algorithm MD5

Linux : md5sum myfile.txt

```
## result ec18b7ee19dff2613c31151b08e16188 *myfile.txt

## upload file to s3 bucket

```
    aws s3 mv myfile.txt s3://prem-s3check-sum
    aws s3api get-object --bucket prem-s3check-sum --key myfile.txt
```

## we can use another aloritham for checksum to upload the file 