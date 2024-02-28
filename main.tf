provider "aws" {
    region = "us-east-2"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "admin_frontend" {
    ami = "ami-02ca28e7c7b8f8be1"
    instance_type = "t2.micro"
    key_name = "f1"

    tags = {
            Name = var.name
    }
}
