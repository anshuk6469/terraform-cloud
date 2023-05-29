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

resource "aws_instance" "example5" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"
   tags = {
    Name = "terraform"
  }
}
resource "aws_instance" "example6" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
  }
}
resource "aws_instance" "example" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"
   tags = {
    Name = "terraform"
  }
 vpc_security_group_ids = [aws_security_group.example_sg1.id]
}

resource "aws_security_group" "example_sg1" {
  name        = "example-sg1"
  description = "Example security group 1"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.65.0.0/16"]
  }
}




