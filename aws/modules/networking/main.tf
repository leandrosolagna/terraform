module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  azs             = ["${var.region}a"]
  name            = var.vpc_name
  cidr            = "10.0.0.0/16"
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.100.0/24"]
  enable_dns_hostnames = true
  map_public_ip_on_launch = true

  tags = {
    Name = "net-ec2"
  }
}

resource "aws_internet_gateway" "net-igw" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "net-igw-ec2"
  }
}

resource "aws_route_table" "net-route-table" {
  vpc_id = module.vpc.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.net-igw.id
  }

  tags = {
    Name = "net-route-table-ec2"
  }
}

resource "aws_route_table_association" "net-route-association-1" {
  subnet_id = module.vpc.public_subnets[0]
  route_table_id = aws_route_table.net-route-table.id
}
