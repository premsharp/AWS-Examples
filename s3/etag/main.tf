terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}


resource "aws_s3_bucket" "testetag-bucket" {
  bucket = "testetag-bucket"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.testetag-bucket.id
  key    = "MyTestFile"
  source = "MyTestFile.txt"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("MyTestFile.txt")
}
