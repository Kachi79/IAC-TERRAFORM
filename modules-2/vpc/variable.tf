variable "vpc_cidr" {
  type = string
  description = "This is the vlue for the cidr range of the vpc"
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name "= "new_vpc" 
  }
  
}