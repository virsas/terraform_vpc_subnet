# tfmod_vpc_subnet

Terraform module to create VPC subnets in AWS using terraform

## Variables

``` terraform
# name: the name of the VPC subnet
# block: the IP allocation for the subnet. Must be within the VPC block
# zone: Specify in which zone the subnet should be placed.
# public: If allocate public IP by default if this subnet is used by EC2
variable "vpc_subnets_example" { default = { name ="example", block = "10.0.0.0/24", zone = "eu-west-1a", public = "false" } }
```

## Dependency

VPC <https://github.com/virsas/tfmod_vpc>

## Terraform example

``` terraform
######################
# VPC subnet variables
######################
variable "vpc_subnets_test_a" { default = { name ="test-a", block = "10.0.0.0/24", zone = "eu-west-1a", public = "false" } }

######################
# VPC subnet
######################
module "vpc_subnet_test_a" {
  source = "github.com/virsas/tfmod_vpc_subnet"
  vpc_id  = module.vpc_main.id
  subnet  = var.vpc_subnets_test_a
}
```
