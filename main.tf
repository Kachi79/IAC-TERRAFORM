module "instance" {
  source        = "./modules-2/aws_instance"
  for_each      = var.instance_config
  instance_ami  = each.value.instance_ami
  instance_type = each.value.instance_type
  nic_id        = module.nic[each.key].nic_id
  instance_name = each.value.instance_name
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
  for_each    = var.instance_config
  subnet_id   = module.subnet.subnet_id
  private_ips = each.value.private_ips
  nic_name    = each.value.nic_name

}

module "vpc" {
  source   = "./modules-2/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag

}
