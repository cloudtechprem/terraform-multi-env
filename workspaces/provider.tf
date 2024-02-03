terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
  backend "s3" {
    bucket = "aws-devops-remote-state"
    key = "workspace"
    region = "us-east-1"
    dynamodb_table = "aws-devops-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}