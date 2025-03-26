resource "aws_nat_gateway" "tta_nat_gateway" {
  subnet_id = aws_subnet.pub-subnet-1.id

  depends_on = [ aws_internet_gateway.tta_igw ]
}