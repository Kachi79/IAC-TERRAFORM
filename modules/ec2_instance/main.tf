resource "aws_instance" "name" {
  
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.avail_zone

  tags = var.instance_tag
}