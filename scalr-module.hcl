version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "ec2"
  }
}

variable "vpc_id" {
  policy = "cloud.networks"
  conditions = {
    cloud = "ec2"
    cloud.location = "${var.region}"
  }
}

variable "subnet" {
  policy = "cloud.subnets"
  conditions = {
  cloud = "ec2",
  cloud.location = "${var.region}",
  cloud.network = "${var.vpc_id}"
  }
}

variable "instance_type" {
  policy = "cloud.instance.types"
  conditions = {
    cloud = "ec2"
  }
}

variable "ami" {
  global_variable = "ami"
}

variable "key" {
  global_variable = "ssh_key"
}

variable "instance_name" {
  global_variable = "instance_name"
}

variable "purpose" {
  global_variable = "purpose"
}

variable "sox" {
  global_variable = "sox"
}
