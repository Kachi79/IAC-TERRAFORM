resource "aws_instance" "foo" {
  ami           = var.instance_ami # us-west-2
  instance_type = var.instance_type


  network_interface {
    network_interface_id = var.nic_id
    device_index         = 0
  }

 tags = var.instance_name

} 


