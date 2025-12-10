resource "aws_s3_bucket" "app_bucket" {
  bucket        = "${var.app_name}-storage-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

output "app_bucket_name" {
  value = aws_s3_bucket.app_bucket.id
}
