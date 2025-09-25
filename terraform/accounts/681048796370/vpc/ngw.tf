resource "aws_nat_gateway" "ngw" {
  for_each          = aws_subnet.private_subnet
  connectivity_type = "private"
  subnet_id         = each.value.id

  tags = {
    Name = "${var.app_name}-ngw"
  }
}