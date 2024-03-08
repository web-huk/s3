variable "bucket_details" {
    type            = object({
        name        = string
        tags        = string
    })
    default         = {
        name        = "tf-fs-sb-bucket-test"
        tags        = "Fs tf bucket"
    }
}
