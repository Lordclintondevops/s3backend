# Creating an S3 Bucket to Store the Terraform.tfstate file
resource "aws_s3_bucket" "clintontfstate" {
  bucket = var.bucket

  tags = {
    Name = "clintontfstate"
  }
}

# # Enabling ACL
# resource "aws_s3_bucket_acl" "new" {
#     bucket = var.bucket
#     acl = "private"
  
# }

# Enabling Versioning 
resource "aws_s3_bucket_versioning" "versioning-state" {
  bucket = var.bucket
  versioning_configuration {
    status = "Enabled"
  }


}

# Configuring the Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "new" {
  bucket = var.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}