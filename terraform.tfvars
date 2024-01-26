vpc_cidr = "172.16.0.0/16"

vpc_tag = {
  "Name" = "MODIFY"
}

subnet_cidr = "172.16.10.0/24"

subnet_name = {
  "Name" = "new_subnet"
}

instance_ami = "ami-0ff1c68c6e837b183"

instance_type = "t2.medium"

instance_name = {
  "Name" = "prod_servers"
}

private_ips = ["172.16.10.100"]

nic_name = {
  "Name" = "network_interface"
}

sg_name = {
  "Name" = "modules_sg"
}

