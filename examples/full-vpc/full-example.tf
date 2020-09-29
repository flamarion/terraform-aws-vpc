provider "aws" {
  version = "~> 2.59"
  region  = "eu-central-1"
}


module "vpc" {
  source                      = "../../"
  az                          = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  cidr_block                  = "10.0.0.0/16"
  enable_dns_hostnames        = true
  enable_dns_support          = true
  public_subnets              = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets             = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  database_subnets            = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
  create_db_subnet_group      = true
  db_subnet_group_name        = "db-subnet-group-flama"
  db_subnet_group_description = "Database Subnet Group"
  enable_nat_gateway          = true
  # Resource Tags
  vpc_tags = {
    "Name" = "vpc-flama"
  }
  public_subnet_tags = {
    "Name" = "public-subnet-flama"
  }
  private_subnet_tags = {
    "Name" = "private-subnet-flama"
  }
  database_subnet_tags = {
    "Name" = "database-subnet-flama"
  }
  db_subnet_group_tags = {
    "Name" = "db-subnet-group-flama"
  }
  nat_gw_tags = {
    "Name" = "nat-gw-flama"
  }
  eip_tags = {
    "Name" = "elastic-ip-flama"
  }
  igw_tags = {
    "Name" = "internet-gateway-flama"
  }
  public_rt_tags = {
    "Name" = "public-subnet-route-table-flama"
  }
  private_rt_tags = {
    "Name" = "private-subnet-route-table-flama"
  }
  db_rt_tags = {
    "Name" = "database-subnet-route-table-flama"
  }
}

# Outputs
output "az" {
  value = module.vpc.az
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "public_subnets_id" {
  value = module.vpc.public_subnets_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "private_subnets_id" {
  value = module.vpc.private_subnets_id
}

output "database_subnets" {
  value = module.vpc.database_subnets
}

output "database_subnets_id" {
  value = module.vpc.database_subnets_id
}

output "database_subnet_group" {
  value = module.vpc.db_subnet_group
}

# output "full_vpc_module_output" {
#   value = module.vpc
# }
