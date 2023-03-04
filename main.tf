terraform {
  required_providers {
    aws = {
        source = "hasicorp/aws"
        version = "~>4.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key ="my-access-key"
  secret_key = "my-secret-key"
  assume_role {
    role_arn = "arn:aws:iam::1234567890"
    session_name = "SESSION_NAME"
    external_id = "EXTERMINAL_IDF"
  }
  assume_role_with_web_identity{
    role_arn = "arn:aws:iam:: 123456789012"
    session_name = "ession_name"
    web_identity_token_file = "/Users/tf_user/secrets"
  }

  
}
# create a VPC
resource "aws_vpc" "example" {
    cidr_block = "10.0.0.0/16"
  }


