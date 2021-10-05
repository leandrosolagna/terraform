module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "solagna1"

  ami                         = var.image
  associate_public_ip_address = true
  instance_type               = var.instance
  key_name                    = var.key_name
  monitoring                  = false
  vpc_security_group_ids      = [var.vpc_security_group_id]
  subnet_id                   = module.networking.public_subnet_id 
#  subnet_id                   = "subnet-0e3b75631380b3d8b"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
