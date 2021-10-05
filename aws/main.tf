provider "aws" {
  profile = var.profile
  region  = var.region
}

module "networking" {
  source = "./modules/networking"
}

module "machines" {
  source = "./modules/machines"
}
