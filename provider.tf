provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias  = "west-1"
  region = "eu-west-1"
}