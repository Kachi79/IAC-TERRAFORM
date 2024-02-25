module "instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  avail_zone    = var.avail_zone
  instance_tag  = var.instance_tag
}