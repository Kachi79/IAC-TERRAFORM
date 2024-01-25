variable "instance_ami" {
  type = string
  default = "ami-0ff1c68c6e837b183"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "nic_id" {
  type = string

}

variable "instance_name" {
  type = map(any)
   default = {
     "Name" = "prod_server"
   }

}