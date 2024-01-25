variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "module"
  }
}

variable "vpc_id" {
  type = string
}