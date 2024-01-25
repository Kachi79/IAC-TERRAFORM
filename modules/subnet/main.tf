resource "aws_subnet" "module" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = var.subnet_tag
}

