terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-recipe-app-tf-states"
    key            = "tf-state-setup"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "devops-recipe-api-tf-locks"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      Managedby   = "Terraform/setup"
    }
  }
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}