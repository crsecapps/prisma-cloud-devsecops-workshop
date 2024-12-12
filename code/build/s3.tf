provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "dcf2e749-c37c-4efe-aa7e-5bf83df97e3b"
    git_commit           = "05cc776a9c02b75aa3153573e3f0ed86f2411167"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-12 17:59:24"
    git_last_modified_by = "crsecapps@gmail.com"
    git_modifiers        = "crsecapps"
    git_org              = "crsecapps"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
