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
  shared_credentials_files = ["../../.secrets/credentials"]
  profile                  = "default"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-auget"
    key = "auget.tfstate"
    region = "us-east-1"
    shared_credentials_files = ["../../.secrets/credentials"]
    profile = "default"
  }
}

module "ec2" {
  source = "../modules/ec2module"
}