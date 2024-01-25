module "instance" {
  source        = "./modules-2/aws_instance"
  instance_ami  = var.instance_ami
  instance_type = var.instance_type
  nic_id        = module.nic.nic_id
  instance_name = var.instance_name
}

module "sg" {
  source  = "./modules-2/aws_sg"
  vpc_id  = module.vpc.vpc_id
  sg_name = var.sg_name
}

module "subnet" {
  source      = "./modules-2/aws_subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
}

module "nic" {
  source      = "./modules-2/nic"
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_name    = var.nic_name

}

module "vpc" {
  source   = "./modules-2/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag

}
