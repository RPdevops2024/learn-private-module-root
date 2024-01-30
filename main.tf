terraform {
 required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
 }

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/rahulptest2024/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}
