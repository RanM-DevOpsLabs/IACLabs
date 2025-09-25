# Create a public subnet
resource "aws_subnet" "public_subnet" {
  for_each                = toset(var.public_subnet_cidr_blocks)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = var.public_availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.app_name}-subnet-public"
  }
}

# Create a private subnet
resource "aws_subnet" "private_subnet" {
  for_each          = toset(var.private_subnet_cidr_blocks)
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value
  availability_zone = var.private_availability_zone
  tags = {
    Name = "${var.app_name}-subnet-private"
  }
}
