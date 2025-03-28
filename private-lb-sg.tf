resource "aws_security_group" "private_lb_sg" {
  name = var.private_lb_sg_name
  description = "Allow http and https"
  vpc_id = aws_vpc.tta_vpc.id

  ingress {
    description = "http traffic"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_groups = [ aws_security_group.ec2_public_sg.id ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common_tags,{
    Name = "allow_http"
  })
}