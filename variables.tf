variable "vpc_id" { default = 0 }
variable "subnet" { default = { name = "example", block = "10.0.0.0/24", zone = "eu-west-1a", public = "false" } }