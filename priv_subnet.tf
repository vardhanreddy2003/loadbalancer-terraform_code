resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.aws-practice-vpc.id
    cidr_block = var.priv_subnet1_cidr
    availability_zone = var.az1
    tags={
        Name="priv-subnet1"
    }
  
}
resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.aws-practice-vpc.id
    cidr_block = var.priv_subnet2_cidr
    availability_zone = var.az2
    tags={
        Name="priv-subnet2"
    }
  
}