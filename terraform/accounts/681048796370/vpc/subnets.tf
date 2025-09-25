# AWS Documentation: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html

# Create two public subnets (one per AZ)
resource "aws_subnet" "public_subnet" {
  for_each                = { for idx, cidr in var.public_subnet_cidr_blocks : idx => { cidr = cidr, az = var.availability_zones[idx] } }
  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.app_name}-subnet-public-${each.value.az}"
  }
}

# Create two private subnets (one per AZ)
resource "aws_subnet" "private_subnet" {
  for_each                = { for idx, cidr in var.private_subnet_cidr_blocks : idx => { cidr = cidr, az = var.availability_zones[idx] } }
  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.app_name}-subnet-private-${each.value.az}"
  }
}
