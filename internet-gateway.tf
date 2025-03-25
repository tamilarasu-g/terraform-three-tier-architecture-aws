resource "aws_internet_gateway" "tta_igw" {
  vpc_id = aws_vpc.tta_vpc.id

  tags = merge(local.common_tags,{
    Name = var.igw_name
  })
}