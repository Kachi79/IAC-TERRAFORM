resource "aws_subnet" "new_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = {
   "Name" = "var.subnet_name"
  }
}

