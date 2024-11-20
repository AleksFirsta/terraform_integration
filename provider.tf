terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}

provider "aws" {
  region     = "<%=customOptions.awsRegion%>"
  access_key = var.access_key
  secret_key = var.secret_key
}