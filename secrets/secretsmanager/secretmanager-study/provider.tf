terraform {
  required_version = ">= 1.2.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket               = //"your bucket"
    key                  = //"your key"
    region               = //"your region"
    encrypt              = true
    workspace_key_prefix = //""
  }
}

provider "aws" {
  region                   = //optional region
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = //"your profile"
}
