variable "instance_ami" {
  type = string
  default = "ami-0e5f882be1900e43b"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "module"
  }

}