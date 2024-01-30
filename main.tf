module "instance" {
  source = "./modules/aws_instance"
  ami = var.ami
  instance_type = var.instance_type
  instance_tag = var.instance_tag
  nic_id = module.nic.nic_id
}

module "nic" {
  source = "./modules/aws_nic"
  subnet_id = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_name = var.nic_name
}

module "sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
  sg_name = var.sg_name
}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  avail_zone = var.avail_zone
  subnet_name = var.subnet_name
}

module "vpc" {
  source = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}