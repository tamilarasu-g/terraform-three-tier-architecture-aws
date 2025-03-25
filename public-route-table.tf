resource "aws_route_table" "public_access_rt" {
  vpc_id = aws_vpc.tta_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tta_igw.id
  }

  tags = merge(local.common_tags,{
    Name = var.public_rt_name
  })
}

resource "aws_route_table_association" "rta-1" {
  subnet_id = aws_subnet.pub-subnet-1.id
  route_table_id = aws_route_table.public_access_rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id = aws_subnet.pub-subnet-2.id
  route_table_id = aws_route_table.public_access_rt.id
}