locals {
  tags = {
    Project = "lks-url"
  }
}

# VPC
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_vpc" "main" {
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(local.tags, { Name = "lks-url-vpc" })
}

# Internet Gateway
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_internet_gateway" "igw" {

  tags = merge(local.tags, { Name = "lks-url-igw" })
}

# Subnets
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_subnet" "public_a" {

  tags = merge(local.tags, { Name = "lks-url-public-subnet-a" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_subnet" "public_b" {

  tags = merge(local.tags, { Name = "lks-url-public-subnet-b" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_subnet" "private_a" {

  tags = merge(local.tags, { Name = "lks-url-private-subnet-a" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_subnet" "private_b" {

  tags = merge(local.tags, { Name = "lks-url-private-subnet-b" })
}

# NAT Gateway
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_eip" "nat" {

  tags = merge(local.tags, { Name = "lks-url-nat-eip" })
}

resource "aws_nat_gateway" "nat" {
  tags = merge(local.tags, { Name = "lks-url-nat" })

  depends_on = []
}

# Route Tables
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table" "public" {

  tags = merge(local.tags, { Name = "lks-url-public-rt" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table" "private" {

  tags = merge(local.tags, { Name = "lks-url-private-rt" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table_association" "public_a" {

}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table_association" "public_b" {

}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table_association" "private_a" {

}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_route_table_association" "private_b" {

}

# Security Groups
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_security_group" "alb" {

  tags = merge(local.tags, { Name = "lks-url-alb-sg" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_security_group" "ecs" {

  tags = merge(local.tags, { Name = "lks-url-ecs-sg" })
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_security_group" "rds" {

  tags = merge(local.tags, { Name = "lks-url-rds-sg" })
}
