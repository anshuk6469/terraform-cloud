terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
}

resource "aws_instance" "example" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.mnicro"
}
