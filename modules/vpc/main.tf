resource "aws_vpc" "module" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = var.vpc_tag
     
  }


