provider "aws" {
  version = "~> 2.59"
  region  = "eu-central-1"
}


module "vpc" {
  source               = "../../"
  az                   = ["eu-central-1a"]
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  public_subnets       = ["10.0.1.0/24"]
  private_subnets      = []
  database_subnets     = []
  # Resource Tags
  vpc_tags = {
    "Name" = "vpc-flama"
  }
  public_subnet_tags = {
    "Name" = "public-subnet-flama"
  }
  igw_tags = {
    "Name" = "internet-gateway-flama"
  }
  public_rt_tags = {
    "Name" = "public-subnet-route-table-flama"
  }
}

# Outputs
output "az" {
  value = module.vpc.az
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "public_subnets_id" {
  value = module.vpc.public_subnets_id
}
