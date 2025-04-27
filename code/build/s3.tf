provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "2c11d4d1-4476-464d-a6e5-a9d06df5469a"
    git_commit           = "f54ea630dbc436d292284069ee4bffab0c719220"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-11 20:30:51"
    git_last_modified_by = "ketan.parekh@umassmed.edu"
    git_modifiers        = "ketan.parekh"
    git_org              = "parekhk"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
