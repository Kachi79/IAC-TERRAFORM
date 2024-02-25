variable "vpc_cidr" {
  type = map(string)   
  default = {dev = "10.0.0.0/16", prod = "10.0.10.0/24", qa = "10.0.20.0/24"}
}