provider "aws" {
    region = var.region
}

module "vpc" {
    source = "./vpc"
}

module "subnet" {
    source = "./subnet"
    vpc_id    = module.vpc.vpc_id
}

module "ec2" {
    source = "./ec2"
    vpc_id    = module.vpc.vpc_id
}


resource "aws_internet_gateway" "my_igw" {
    vpc_id = module.vpc.my_vpc.id
}

resource "aws_route_table" "my_rt" {
    vpc_id = module.vpc.my_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }
}

resource "aws_route_table_association" "my_rta" {
    subnet_id = module.subnet.my_subnet.id
    route_table_id = module.route_table.my_rt.id
}

