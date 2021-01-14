output "az" {
  value = var.az
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnets.*.cidr_block
}

output "public_subnets_id" {
  value = aws_subnet.public_subnets.*.id
}

output "private_subnets" {
  value = aws_subnet.private_subnets.*.cidr_block
}

output "private_subnets_id" {
  value = aws_subnet.private_subnets.*.id
}

output "database_subnets" {
  value = aws_subnet.database_subnets.*.cidr_block
}

output "database_subnets_id" {
  value = aws_subnet.database_subnets.*.id
}

output "db_subnet_group" {
  value = aws_db_subnet_group.db_subnet_group.*.id
}

output "cache_subnets" {
  value = aws_subnet.cache_subnets.*.cidr_block
}

output "cache_subnets_id" {
  value = aws_subnet.cache_subnets.*.id
}

output "cache_subnet_group" {
  value = aws_elasticache_security_group.cache_subnet_group.*.id
}