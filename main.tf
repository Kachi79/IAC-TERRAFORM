resource "aws_vpc" "main" {
  for_each = toset(var.vpc_cidr)
  cidr_block = each.value
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}