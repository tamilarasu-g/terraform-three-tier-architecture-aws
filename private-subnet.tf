resource "aws_subnet" "private_subnet_1" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_1_cidr_block
  availability_zone = var.subnet1-az
  map_public_ip_on_launch = false

  tags = merge(local.common_tags,{
    Name = "backend-subnet-1"
  })
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_2_cidr_block
  availability_zone = var.subnet2-az
  map_public_ip_on_launch = false

  tags = merge(local.common_tags,{
    Name = "backend-subnet-2"
  })
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_3_cidr_block
  availability_zone = var.subnet1-az
  map_public_ip_on_launch = false

  tags = merge(local.common_tags,{
    Name = "database-subnet-1"
  })
}

resource "aws_subnet" "private_subnet_4" {
  vpc_id = aws_vpc.tta_vpc.id
  cidr_block = var.private_subnet_4_cidr_block
  availability_zone = var.subnet2-az
  map_public_ip_on_launch = false

  tags = merge(local.common_tags,{
    Name = "database-subnet-2"
  })
}