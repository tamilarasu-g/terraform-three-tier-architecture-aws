resource "aws_nat_gateway" "tta_nat_gateway" {
  subnet_id = aws_subnet.pub-subnet-1.id
  allocation_id = aws_eip.eip_for_nat_gateway.id

  tags = merge(local.common_tags,{
    Name = "tta-nat-gateway"
  })

  depends_on = [ aws_internet_gateway.tta_igw ]
}