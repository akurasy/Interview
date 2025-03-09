terraform {
  required_version = ">= 1.2.0, < 2.0.0"
  backend "local" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0, < 5.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      terraform = "true"
      interview = "true"
      owner     = var.candidate_last_name
    }
  }

  # do not change
  allowed_account_ids = ["348828215011"]

  # optionally use to not clash with existing profiles
  # profile = "sb"

  # optionally specify a non default credential location
  # shared_credentials_files = ["~/.example"]
}
