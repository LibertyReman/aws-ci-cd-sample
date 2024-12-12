resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-20241212-s3"
  tags = {
    Name = "terraform-s3"
  }
}

