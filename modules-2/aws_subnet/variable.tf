variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
  default = "172.16.10.0/24"
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "new_subnet"
  }
}