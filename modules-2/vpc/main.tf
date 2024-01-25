resource "aws_vpc" "new_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = var.vpc_tag
}

