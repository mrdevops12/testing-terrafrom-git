terraform {
  backend "s3" {
    bucket       = "mrdevops12-terraform-state-2026"
    key          = "ec2/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-01edba92f9036f76e"
  instance_type = "t2.micro"

  tags = {
    Name = "testing"
  }
}