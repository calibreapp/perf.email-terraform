resource "aws_s3_bucket" "perf-email" {
    bucket = "perf.email"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}
