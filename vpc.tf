# Creating aws vpc 
resource "aws_vpc" "myvpc" {
    cidr_block = var.aws_vpc_cidr
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
        Owner = "Jagan Mohan Reddy"
    }
}

# Creating Internet Gateway for the specific vpc
resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = var.igw_name
    }
    
}

# Creating aws public subnet 1 
resource "aws_subnet" "subnet1-public" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet1_cidr
    availability_zone = var.aws_subnet_region
    tags = {
        Name = var.public_subnet1_name
    }
}

# Creating aws public subnet 2
resource "aws_subnet" "subnet2-public" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet2_cidr
    availability_zone = var.aws_subnet_region
    tags = {
        Name = var.public_subnet2_name
    }
}

# Creating aws public subnet 3
resource "aws_subnet" "subnet3-public" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet3_cidr
    availability_zone = var.aws_subnet_region
    tags = {
        Name = var.public_subnet3_name
    }
}