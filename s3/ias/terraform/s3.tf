resource "aws_s3_bucket" "premsai-bucket" {
  bucket = "premsai-bucket"
  

  tags = {
    Name        = "premsai-bucket"
    Environment = "Dev"
  }
}