resource "aws_lb_target_group" "tta_lb_target_group" {
  name = var.lb_target_group_name
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.tta_vpc.id
}

resource "aws_lb_target_group_attachment" "tg-attachment-1" {
  target_group_arn = aws_lb_target_group.tta_lb_target_group.arn
  target_id = aws_instance.instance-1.id
  port = 4173
}

resource "aws_lb_target_group_attachment" "tg-attachment-2" {
  target_group_arn = aws_lb_target_group.tta_lb_target_group.arn
  target_id = aws_instance.instance-2.id
  port = 4173
}