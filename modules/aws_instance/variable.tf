variable "ami" {
  type = string
  default = "ami-0ff1c68c6e837b183"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_tag" {
  type = map(any)
  default = {
    "Name" = "dev_instance"
  }
}

variable "nic_id" {
  type = string
}