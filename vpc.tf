resource "aws_vpc" "tta_vpc" {
  cidr_block = var.cidr_block

  tags = merge(local.common_tags,{
    Name = var.vpc_name
  })
}