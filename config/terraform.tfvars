vpc_name = {"Name" = "Default_VPC"}

subnet_name = {"Name"= "Default_subnet_eu-west-2b"}

sg_name = {"Name" = "default_sg"}

aws_sg  = {
    "8080" = {
       description = "allow_port 8080 traffic"
       port        = 8080
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }
    "22" = {
       description = "allow ssh traffic"
       port        = 22
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }



}

ami = "ami-0e5f882be1900e43b"

instance_type = "t2.large"

instance_name = {"Name" = "default_ec2"}