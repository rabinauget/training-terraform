terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
  required_version = "v1.10.3"
}

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["../.secrets/credentials"]
  profile                  = "dev"
}

resource "aws_instance" "myec2" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"
  key_name      = "terraform-training"
  tags = {
    Name = "ec2-training-terraform"
  }
}