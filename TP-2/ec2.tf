terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0"
    }
  }
  required_version = "v1.10.3"
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3FLD57ASU5OLYM4X"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-005fc0f236362e99f"
    instance_type = "t2.micro"
    key_name = "terraform-training"
    tags = {
        Name = "ec2-training-terraform"
    }
}