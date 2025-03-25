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