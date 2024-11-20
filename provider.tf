terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }

  backend "s3" {
    bucket = "terraform-morpheus-int"
    key    = "terraform/main.tfstate"
    region = "eu-north-1"
    access_key = var.access_key
    secret_key = var.secret_key
  }
}

provider "aws" {
  region     = "eu-north-1"
  access_key = var.access_key
  secret_key = var.secret_key
}