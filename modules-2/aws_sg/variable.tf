variable "sg_name" {
  type = map(any)
  default = {
    "Name" = "terraform_sg"
  }
  
}

variable "vpc_id" {
  type = string

}