# Remote State Configuration
# Uncomment and configure after creating S3 bucket

terraform {
  backend "s3" {
    bucket  = "terraform-aws-terraform-state-864997390929"
    key     = "assignment-7/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
