provider "aws" {
  region = "eu-central-1"  # make sure right region is selected
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "joelt-terraform-project" # choose a unique name
  acl    = "private" # had to manually set ACL to private

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "website_files" {
  bucket = aws_s3_bucket.website_bucket.id
  key    = "index.html"
  source = "index.html"
}

# Output the website URL
output "website_url" {
  value = aws_s3_bucket.website_bucket.website_endpoint
}
