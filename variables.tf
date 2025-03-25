variable "cidr_block" {
  type = string
  description = "CIDR Block for the VPC"
}

variable "vpc_name" {
  type = string
  description = "Name of the VPC"
}

variable "public_sub_1_cidr_block" {
  type = string
  description = "CIDR block for Public Subnet 1"
}

variable "public_sub_2_cidr_block" {
  type = string
  description = "CIDR block for Public Subnet 2"
}

variable "subnet1-az" {
  type = string
  description = "AZ for subnet 1"
}

variable "subnet2-az" {
  type = string
  description = "AZ for subnet 2"
}

variable "public_rt_name" {
  type = string
  description = "Name for Public route table"
}

variable "igw_name" {
  type = string
  description = "Name for the Internet Gateway"
}

variable "private_subnet_1_cidr_block" {
  type = string
  description = "CIDR Block for Private Subnet 1"
}

variable "private_subnet_2_cidr_block" {
  type = string
  description = "CIDR Block for Private Subnet 2"
}

variable "db_sg_name" {
  type = string
  description = "Security group name for DB"
}

variable "lb_sg_name" {
  type = string
  description = "Security group name for LB"
}

variable "ec2_sg_name" {
  type = string
  description = "Security group name for EC2"
}

variable "lb_target_group_name" {
  type = string
  description = "Name for the LB target group"
}

variable "ami-id" {
  type = string
  description = "AMI ID for EC2"
}

variable "instance-type" {
  type = string
  description = "EC2 instance type"
}

variable "key-name" {
  type = string
  description = "SSH Key name"
}

variable "instance_1_name" {
  type = string
  description = "Name for instance 1"
}

variable "instance_2_name" {
  type = string
  description = "Name for instance 2"
}