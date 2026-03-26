terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami           = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"

  #   Optional
  tags = {
    Name = "terrform_ec2"
  }
}
