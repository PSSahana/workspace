resource "aws_s3_bucket" "b" {
  bucket = "my-bucket-for-testing-12345"

  tags = {
    Name        = var.name_bucket
    Environment = var.env
  }
}