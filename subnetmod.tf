resource "aws_subnet" "my_subnet" {
    vpc_id                  = aws_vpc.my_vpc.id
    cidr_block              = var.subnet_cidr
    availability_zone       = var.az
    map_public_ip_on_launch = true
}