resource "aws_security_group" "ec2_sg" {
  name        = var.ec2_sg_name
  description = "Allow tls for inbound traffic"
  vpc_id = aws_vpc.tta_vpc.id


  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    security_groups = [aws_security_group.lb_sg.id]
  }

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    security_groups = [aws_security_group.lb_sg.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description      = "Rule to allow connections to database from any instances this security group is attached to"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.db-sg.id]
    self             = false
  }

  tags = {
    Name = "allow_tls"
  }
}