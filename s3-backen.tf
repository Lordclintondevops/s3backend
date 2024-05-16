# Configuring the Remote Backend With S3
terraform {
  backend "s3" {
    bucket         = "clintontfstate"
    key            = "key/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "state_lock"
    encrypt        = true

  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.49.0"
    }
  }
}