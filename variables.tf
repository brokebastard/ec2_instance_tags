variable "region" {
  description = "Region"
}

variable "instance_type" {
  description = "Instance Type"
}

variable "subnet" {
description = "Subnet ID"
}

variable "key" {
  description = "AWS Key"
}

variable "vpc_id" {
description = "VPC"
}

variable "ami" {
  description = "AMI"
}

variable "instance_name" {
  description = "Name of the ec2 instance"
}

variable "sox" {
  description = "Does this need to be sox compliant?"
}

variable "purpose" {
  description = "What is the purpose of this server"
}
