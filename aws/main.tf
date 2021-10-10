provider "aws" {
  region  = var.region
  profile = var.profile
}

module "networking" {
  source = "./modules/networking"
}

module "bucket" {
  source = "./modules/bucket"
}
