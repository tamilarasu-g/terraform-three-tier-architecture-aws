resource "aws_eip" "eip_for_nat_gateway" {
  domain = "vpc"
}