provider "aws" {
    region = "us-east-2"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "admin_frontend" {
    ami = "ami-05fb0b8c1424f266b"
    instance_type = "t2.micro"
    key_name = "f2"

    tags = {
            Name = var.name
    }
}
