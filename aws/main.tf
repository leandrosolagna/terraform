provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "s3" {
    profile = "leandroiam"
    region  = "eu-central-1"
    bucket  = "state-bucket-solagna"
    key     = "terraform.tfstate"
  }
}

module "networking" {
  source   = "./modules/networking"
  region   = var.region
  vpc_name = var.vpc_name
}

module "bucket" {
  source = "./modules/bucket"
}
