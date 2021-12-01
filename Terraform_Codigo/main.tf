provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAQVNEPXTP4O7Q433B"     //Usuario
    secret_key = "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"     //CONTRASEÑA    
    
    ##En este punto ya estaria logueada a el usuario de AWS
}

resource "aws_security_group" "team1-security_group"{
  name = "team1-security_group"
  description = "Security Group usado en Team 1"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0 
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}

resource "aws_lb" "test" {
  name               = "team1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-0bfe69a26046223a2"]
  subnets            = ["subnet-0b300a7f1fa247b77", "subnet-09c256123e7953a27"]

  enable_deletion_protection = true

  tags = {
    Environment = "Cloud Devops"
  }
}