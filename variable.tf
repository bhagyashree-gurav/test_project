variable "vpc_cidr_block" {
    description = "my vpc cidr block value"
    type = string
    default = "10.0.0.0/16"
}
variable "availability_zone" {
    description = "my availability zone value"
    type = string
    default = "us-east-1"
}
variable "env_prefix" {
    description = "prefix for environment name"
    type = string
    default = "dev"
}
variable "instance_type" {
    description = "instance type for ec2"
    type = string
    default = "t2.micro"
}
variable "subnet_cidr_block" {
    description = "my subnet cidr block value"
    type = string
    default = "10.0.0.0/24"
}
