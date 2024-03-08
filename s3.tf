resource "aws_s3_bucket" "mug" {
  bucket    = var.bucket_details.name

  tags = {
    Name    = var.bucket_details.tags
  }
}

resource "aws_s3_bucket_public_access_block" "zample" {
  bucket                  = aws_s3_bucket.mug.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

data "aws_s3_bucket" "mug" {
  bucket = var.bucket_details.name

  depends_on = [ aws_s3_bucket.mug ]
}