resource "aws_db_instance" "tta_db" {
  allocated_storage = 10
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
  storage_type = "gp2"
  identifier = "tta-db"

  vpc_security_group_ids = [aws_security_group.db-sg.id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name = "db_subnet_group"
  subnet_ids = [aws_subnet.private_subnet_3.id, aws_subnet.private_subnet_4.id]

  tags = merge(local.common_tags,{
    Name = "DB Subnet Group"
  })
}