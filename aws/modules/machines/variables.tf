variable "profile" {
  type = string
  description = "My AWS profile"
  default = "terraformbook"
}

variable "region" {
  type = string
  description = "My AWS region"
  default = "eu-central-1"
}

variable "image" {
  type = string
  description = "Ubuntu machine image AMI"
  default = "ami-05f7491af5eef733a"
}

variable "instance" {
  type = string
  description = "Instance of the EC2 machine"
  default = "t2.micro"
}

variable "vpc_security_group_id" {
  type = string
  description = "My vpc security group id"
  default = "sg-0db084da9f0baac33"
}

variable "key_name" {
  type = string
  description = "My Key name"
  default = "aws-solagna"
}
