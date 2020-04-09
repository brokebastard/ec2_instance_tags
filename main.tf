provider "aws" {
  region     = var.region
}

data "null_data_source" "values" {
  inputs = {
    vpc_id = var.vpc_id
    }
}

resource "aws_instance" "scalr" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet
  key_name               = var.key
  tags = {
    Name = var.instance_name
    Puropse = var.purpose
    SOX = var.sox
}
}
