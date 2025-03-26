resource "aws_lb_target_group" "tta_lb_private_target_group" {
  name = var.lb_private_target_group_name
  port = 3000
  protocol = "TCP"
  vpc_id = aws_vpc.tta_vpc.id
}

resource "aws_lb_target_group_attachment" "tg-attachment-3" {
  target_group_arn = aws_lb_target_group.tta_lb_private_target_group.arn
  target_id = aws_instance.instance-3.id
  port = 3000
}

resource "aws_lb_target_group_attachment" "tg-attachment-4" {
  target_group_arn = aws_lb_target_group.tta_lb_private_target_group.arn
  target_id = aws_instance.instance-4.id
  port = 3000
}