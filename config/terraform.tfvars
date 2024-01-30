ami = "ami-0ff1c68c6e837b183" 

instance_type = "t2.medium"

instance_tag = {"Name" = "development_tag"}
 
private_ips = ["172.16.10.100"]

nic_name = {"Name" = "major_network_interface"}

sg_name = {"Name" = "dev_sg"}

subnet_cidr = "172.16.10.0/24"

avail_zone = "eu-west-2a"

subnet_name = {"name" = "dev_subnet"}

vpc_cidr = "172.16.0.0/16"

vpc_name = {"Name" = "dev_vpc"}
