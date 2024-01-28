vpc_cidr = "172.16.0.0/16"

vpc_tag = {
  "Name" = "MODIFY"
}

subnet_cidr = "172.16.10.0/24"

subnet_name = {
  "Name" = "new_subnet"
}

private_ips = ["172.16.10.100"]

nic_name = {
  "Name" = "network_interface"
}

sg_name = {
  "Name" = "MODULES_SG"
}

instance_config = {
  instance-1 = {
    instance_ami = "ami-0ff1c68c6e837b183"
    instance_type = "t2.medium"
    instance_name = {"Name" = "prod_servers-1"}
    private_ips = ["172.16.10.100"]
    nic_name = {"Name" = "network_interface-1"}

  }
  instance-2 = {
    instance_ami = "ami-0ff1c68c6e837b183"
    instance_type = "t2.medium"
    instance_name = {"Name" = "prod_servers-2"}
    private_ips = ["172.16.10.101"]
    nic_name = {"Name" = "network_interface-2"}

  }
  instance-3 = {
    instance_ami = "ami-0ff1c68c6e837b183"
    instance_type = "t2.medium"
    instance_name = {"Name" = "prod_servers-3"}
    private_ips = ["172.16.10.102"]
    nic_name = {"Name" = "network_interface-3"}

  }  

}