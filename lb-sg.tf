resource "aws_security_group" "lb_sg" {
  name = var.lb_sg_name
  description = "Allow http and https"
  vpc_id = aws_vpc.tta_vpc.id

  ingress {
    description = "http traffic"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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