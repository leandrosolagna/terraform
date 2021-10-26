variable "profile" {
  type        = string
  description = "My AWS profile"
  default     = "leandroiam"
}

variable "region" {
  type        = string
  description = "My AWS region"
  default     = "eu-central-1"
}

variable "vpc_name" {
  type    = string
  default = "solagna-vpc-ec2"
}
