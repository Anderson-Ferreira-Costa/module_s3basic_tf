terraform {
  required_version = ">= 1.0.3"
  required_providers {
    aws = "~> 4.4"
  }
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
