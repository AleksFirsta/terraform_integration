terraform {
#   backend "s3" {
#     bucket = "terraform-morpheus-int"
#     key    = "terraform/main.tfstate"
#     region = "eu-north-1"
#   }
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}