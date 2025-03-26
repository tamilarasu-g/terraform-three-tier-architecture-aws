resource "aws_instance" "instance-1" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.pub-subnet-1.id
    security_groups = [aws_security_group.ec2_public_sg.id]
    key_name = var.key-name
    user_data = file("frontend.sh")

    tags = merge(local.common_tags,{
        Name = var.instance_1_name
    })

    depends_on = [ aws_lb.tta_internal_lb ]

}

resource "aws_instance" "instance-2" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.pub-subnet-2.id
    security_groups = [aws_security_group.ec2_public_sg.id]
    key_name = var.key-name
    user_data = file("frontend.sh")

    tags = merge(local.common_tags,{
        Name = var.instance_2_name
    })

    depends_on = [ aws_lb.tta_internal_lb ]
}

resource "aws_instance" "instance-3" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.private_subnet_1.id
    security_groups = [aws_security_group.ec2_private_sg.id]
    key_name = var.key-name
    user_data = file("backend.sh")

    tags = merge(local.common_tags,{
        Name = var.instance_3_name
    })
}

resource "aws_instance" "instance-4" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = aws_subnet.private_subnet_2.id
    security_groups = [aws_security_group.ec2_private_sg.id]
    key_name = var.key-name
    user_data = file("backend.sh")

    tags = merge(local.common_tags,{
        Name = var.instance_4_name
    })
}