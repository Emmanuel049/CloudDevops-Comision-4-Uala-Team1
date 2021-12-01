variable "aws_region" {
    description = "AWS region to launch servers."
    default = "eu-west-2" 
}

variable "aws_amis"{
    description = "Windows 2022 Base"
    default = {
        eu_west_2 = "ami-071f3c7549e87c9fe" //LONDON
    }
}

variable "key_name" {
    description = "Name of the SSH keypair to use in AWS"
    default = {
        eu_west_2 = "team1-terraform-key-eu-west-2"
    } 
}

variable "instance_type" {
    default = "t2.micro"
    description = "AWS instance type"
}

variable "asg_min" {
    description = "Min numbers of servers in ASG"
    default = "1"
}

variable "asg_max" {
    description = "Max numbers of servers in ASG"
    default = "8"
}

variable "asg_desired" {
    description = "Desired numbers of servers in ASG"
    default = "2"
}
