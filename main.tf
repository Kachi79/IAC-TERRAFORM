resource "aws_vpc" "main" {
  for_each = (var.vpc_cidr)
  cidr_block = each.value
  instance_tenancy = "default"

  tags = {
    Name = each.key
  }
}