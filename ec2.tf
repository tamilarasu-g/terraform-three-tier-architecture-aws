resource "aws_instance" "instance-1" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.pub-subnet-1.id
    security_groups = [aws_security_group.ec2_sg.id]
    key_name = var.key-name

    tags = merge(local.common_tags,{
        Name = var.instance_1_name
    })

}

resource "aws_instance" "instance-2" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.pub-subnet-2.id
    security_groups = [aws_security_group.ec2_sg.id]
    key_name = var.key-name

    tags = merge(local.common_tags,{
        Name = var.instance_2_name
    })
}
