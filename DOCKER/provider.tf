terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
  bucket = "82sn-remote-state"
  key = "ec2-docker"
  region = "us-east-1"
  dynamodb_table = "82s-state-locking"
}

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"


}