# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "cce-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}
