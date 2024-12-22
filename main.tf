terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  backend "s3" {
    bucket         = "gitactionskirito"              # needs to be manually crreated
    key            = "gitactions_terraform.tfstate"  # This cretes automatically
    region         = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}