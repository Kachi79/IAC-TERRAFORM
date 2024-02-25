variable "vpc_cidr" {
  type = list(string)   
  default = ["10.0.0.0/16", "10.0.10.0/24", "10.0.20.0/24"]
}