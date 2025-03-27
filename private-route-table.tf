resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.tta_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.tta_nat_gateway.id
  }

  tags = merge(local.common_tags,{
    Name = "private-route-table"
  })
}

resource "aws_route_table_association" "rt-3" {
  subnet_id = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "rt-4" {
  subnet_id = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_route_table.id
}