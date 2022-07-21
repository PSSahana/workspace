resource "aws_vpc" "main" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "pub"{
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "Pub_sub"
  }
}

resource "aws_subnet" "prv"{
  vpc_id = var.vpc_id
  cidr_block = var.prv_sub_cidr
  tags = {
    Name = "Prv_sub"
  }
}