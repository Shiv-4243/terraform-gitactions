terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  backend "s3" {
    bucket         = "gitactionskirito"
    key            = "gitactions_terraform.tfstate"
    region         = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}