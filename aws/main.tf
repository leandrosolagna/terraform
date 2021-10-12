provider "aws" {
  region  = var.region
  profile = var.profile
}

module "networking" {
  source = "./modules/networking"
  region = var.region
  vpc_name = var.vpc_name
}

module "bucket" {
  source = "./modules/bucket"
}
