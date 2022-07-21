terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}


provider "aws" {
  region                   = "ap-southeast-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Test User"

}