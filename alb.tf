resource "aws_lb" "tta_lb" {
  name = "tta-lb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.lb_sg.id]
  subnets = [aws_subnet.pub-subnet-1.id, aws_subnet.pub-subnet-2.id]

  tags = merge(local.common_tags,{
    Environment = "production"
  })
}

resource "aws_lb_listener" "tta_lb_listener" {
  load_balancer_arn = aws_lb.tta_lb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tta_lb_target_group.arn
  }
}