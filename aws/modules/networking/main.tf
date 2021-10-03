provider "aws" {
  region = var.region
  profile = var.profile
}

module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  azs             = ["${var.region}a"]
  name            = "solagna-vpc"
  cidr            = "10.0.0.0/16"
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.100.0/24"]
}
