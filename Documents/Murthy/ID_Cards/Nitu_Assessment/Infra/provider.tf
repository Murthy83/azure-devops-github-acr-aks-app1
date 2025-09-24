terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"     # Will need to create S3 bucket
    key            = "ecs-fargate/terraform.tfstate" # S3 bucket / Path 
    region         = "us-east-1"                     
    dynamodb_table = "terraform-locks"               # For DynamoDB for state locking
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
