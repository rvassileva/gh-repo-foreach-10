terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = toset(var.app_servers)
  tags = {
    Name = each.value
  }
}