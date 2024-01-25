module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag
}

module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_tag  = var.subnet_tag
}

module "aws_sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
}

module "instance" {
  source        = "./modules/instance"
  instance_ami  = var.instance_ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}
