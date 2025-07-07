 resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr_block
    tags {
        name =  "${var.env_prefix}-vpc"
    }
 }
resource "aws_internet_gateway" "myigw" {
    vpc_id = "aws_vpc.myVPC.id"
    tags {
        name = "${var.env_prefix}-igw"
    }
 }
resource "aws_subnet" "mysubnet" {
    vpc_id = "aws_vpc.myvpc.id"
    cidr_block = "var.subnet_cidr_block"
    availability_zone = var.avail_zone
    tags {
        name = "${var.env_prefix}-subnet"
    }
 }
 resource "aws_default_route_table" "myrtb" {
  default_route_table_id = aws_vpc.myvpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }
  tags = {
    Name = "${var.env_prefix}-rtb"
  }
}
 resource "aws_default_security_group" "mySG" {
    vpc_id      = "aws_vpc.myVPC.id"
    ingress {
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }
    ingress {
        to_port = 8080
        from_port = 8080
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }
    egress { 
        from_port = 0
        to_port = 0 
        protcol = "-1"
        cidr_block = ["0.0.0.0/0"]
    }
    tags = {
    Name = "${var.env_prefix}-SG"
 }