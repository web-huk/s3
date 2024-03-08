variable "bucket_details" {
    type            = object({
        name        = string
        tags        = string
    })
    default         = {
        name        = "st-tf-bucket-test"
        tags        = "My tf bucket"
    }
}
