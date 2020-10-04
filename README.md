# VPC Modules

This module is intended to create a VPC with the following components.

* VPC
* Public Subnets
* Private Subnets
* Database Subnets
* Database Subnet Group
* Internet Gateway
* Nat Gateway 
* Route tables
* Routes 
  + private subnets -> nat gateway
  + database subnets -> nat gateway
  + public subnets -> internet gateway

Only one Nat Gateway and EIP will be created in order to save costs. The EIP will be placed on the Public Network.

If you need more detailed configuration inside a VPC I recommend you use the official terraform module for AWS VPC

https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws

## Input Variables

|Name|Type|Mandatory|Default Value|Description|
|----|----|---------|-------------|-----------|
|az|list(string)|yes|["eu-central-1a"]|Availability Zone List|
|cidr_block|string|yes|"10.0.0.0/16"|Network address in CIDR format|
|enable_dns_hostnames|bool|no|true|Enable hostname support in the VPC|
|enable_dns_support|bool|no|true|Enable DNS support in the VPC|
|enable_nat_gateway|bool|no|false|Enable nat gateway for private subnet|
|vpc_tags|map(string)|no|{}|Map of tags for the VPC|
|public_subnets|list(string)|no|["10.1.0.0/24"]|List of public subnets|
|private_subnets|list(string)|no|[]|List of private subnets|
|database_subnets|list(string)|no|[]|List of database subnets|
|public_subnet_tags|map(string)|no|{}|Map of tags for the public subnets|
|private_subnet_tags|map(string)|no|{}|Map of tags for the private subnets|
|database_subnet_tags|map(string)|no|{}|Map of tags for the database subnets|
|db_subnet_group_tags|map(string|no|{}|Database subnet group tags|
|db_subnet_group_description|string|no|"Database Subnet Group"|Database subnet group description
|create_db_subnet_group|bool|no|false|Create database subnet group with the database subnets|
|map_public_ip|bool|no|false|Map public ip for instances in a subnet|
|eip_tags|map(string)|no|{}|Map of tags for the EIP|
|igw_tags|map(string)|no|{}|Map of tags for the Internet Gateway|
|nat_gw_tags|map(string)|no|{}|Map of tags for the Nat Gateway|
|public_rt_tags|map(string)|no|{}|Map of tags for the Public route table|
|private_rt_tags|map(string)|no|{}|Map of tags for the Private route table|
|db_rt_tags|map(string)|no|{}|Map of tags for the Database route table|


## Outputs

The outputs available are the following

|Name|Description|
|----|-----------|
|az|availability zone list|
|database_subnets|database subnets CIDR list|
|database_subnets_id|database subnet id list|
|db_subnet_group|database subnet group id/name|
|private_subnets|private subnets CIDR list|
|private_subnets_id|private subnet id list|
|public_subnets|public subnets CIDR list|
|public_subnets_id|public subnet id list|
|vpc_id|VPC id|

## Example

The full example can be found in [Examples](./examples) directory.

## Tests

TODO