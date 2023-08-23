terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA4RF4HSJSZJBTJG6K"
  secret_key = "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"
}
