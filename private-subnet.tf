resource "aws_subnet" "private_subnet_1" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_1_cidr_block
  availability_zone = var.subnet1-az
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_2_cidr_block
  availability_zone = var.subnet2-az
  map_public_ip_on_launch = false
}