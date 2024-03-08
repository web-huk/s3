output "arn" {
    value = data.aws_s3_bucket.mug.arn
}

output "bucket_id" {
    value = data.aws_s3_bucket.mug.id
}

output "region" {
    value = data.aws_s3_bucket.mug.region
}