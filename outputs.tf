output "db_endpoint" {
  value = aws_db_instance.tta_db.address
}

output "instance-1-ip" {
  value = aws_instance.instance-1.public_ip
}

output "instance-2-ip" {
  value = aws_instance.instance-2.public_ip
}

output "public-loadbalancer-url" {
  value = aws_lb.tta_lb.dns_name
}

output "private-loadbalancer-url" {
  value = aws_lb.tta_internal_lb.dns_name
}