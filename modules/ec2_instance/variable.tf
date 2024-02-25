variable "ami" {
  type = string
  description = "This is the ami of the instance"
}

variable "instance_type" {
  type = string
  description = "This is the size of the instance"
}

variable "avail_zone" {
  type = string
  description = "The is the location where the instance is launched"
}

variable "instance_tag" {
  type = map(any)
  description = "This is the name of the instance"
}