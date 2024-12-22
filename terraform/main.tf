# 現在の日時の取得
locals {
  # yyyyMMddHHmm形式
  current_date_time = formatdate("200601021504", timestamp())
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-${local.current_date_time}-s3"
  tags = {
    Name = "terraform-s3"
  }
}

