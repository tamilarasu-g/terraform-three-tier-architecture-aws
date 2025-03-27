resource "aws_security_group" "db-sg" {
  name = var.db_sg_name
  description = "allow traffic for db"
  vpc_id = aws_vpc.tta_vpc.id

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [aws_security_group.ec2_private_sg.id]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common_tags,{
    Name = var.db_sg_name
  })
}