resource "aws_subnet" "pub-subnet-1" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.public_sub_1_cidr_block
  availability_zone = var.subnet1-az
  map_public_ip_on_launch = true
}

resource "aws_subnet" "pub-subnet-2" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.public_sub_2_cidr_block
  availability_zone = var.subnet2-az
  map_public_ip_on_launch = true
}