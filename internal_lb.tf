resource "aws_lb" "tta_internal_lb" {
  name = "tta-internal-lb"
  internal = true
  load_balancer_type = "application"
  security_groups = [aws_security_group.private_lb_sg.id]
  subnets = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]

  tags = merge(local.common_tags,{
    Environment = "production"
  })
}

resource "aws_lb_listener" "tta_internal_lb_listener" {
  load_balancer_arn = aws_lb.tta_internal_lb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tta_lb_private_target_group.arn
  }
}