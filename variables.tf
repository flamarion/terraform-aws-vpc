variable "az" {
  description = "Availability Zone List"
  type        = list(string)
  default     = ["eu-central-1a"]
}

variable "cidr_block" {
  description = "VPC Main CIDR Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS Support"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Map of VPC tags"
  type        = map(string)
  default     = {}
}

variable "public_subnets" {
  description = "Public Subnets List"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "map_public_ip" {
  description = "Map public IP to the hosts"
  type        = bool
  default     = false
}

variable "public_subnet_tags" {
  description = "Map of Public Subnet tags"
  type        = map(string)
  default     = {}
}

variable "private_subnets" {
  description = "Private Subnets List"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "private_subnet_tags" {
  description = "Map of public subnet tags"
  type        = map(string)
  default     = {}
}

variable "database_subnets" {
  description = "Database Subnets List"
  type        = list(string)
  default     = ["10.0.3.0/24"]
}

variable "database_subnet_tags" {
  description = "Map of database subnet tags"
  type        = map(string)
  default     = {}
}

variable "create_db_subnet_group" {
  description = "Create database subnet groups"
  type        = bool
  default     = false
}

variable "db_subnet_group_name" {
  description = "Database subnet group name"
  type        = string
  default     = "db-subnet-group"
}

variable "db_subnet_group_description" {
  description = "Database subnet group name"
  type        = string
  default     = "Database Subnet Group"
}

variable "db_subnet_group_tags" {
  description = "Map database subnet group tags"
  type        = map(string)
  default     = {}
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway"
  type        = bool
  default     = false
}
variable "nat_gw_tags" {
  description = "Map of Nat Gateway tags"
  type        = map(string)
  default     = {}
}

variable "igw_tags" {
  description = "Map of internet gateway tags"
  type        = map(string)
  default     = {}
}

variable "eip_tags" {
  description = "Map of eip tags"
  type        = map(string)
  default     = {}
}


variable "public_rt_tags" {
  description = "Map of public route table tags"
  type        = map(string)
  default     = {}
}

variable "private_rt_tags" {
  description = "Map of private route table tags"
  type        = map(string)
  default     = {}
}

variable "db_rt_tags" {
  description = "Map of database route table tags"
  type        = map(string)
  default     = {}
}
