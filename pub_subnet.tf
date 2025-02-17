resource "aws_subnet" "public-subnet-1" {
    vpc_id =aws_vpc.aws-practice-vpc.id
    cidr_block = var.pub_subnet1_cidr
    availability_zone = var.az1
     map_public_ip_on_launch = true

    tags = {
      Name="public_subnet1"
    }

  
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id =aws_vpc.aws-practice-vpc.id
    cidr_block =var.pub_subnet2_cidr
     map_public_ip_on_launch = true
    availability_zone = var.az2
    tags={
        Name="public-subnet2"
    }
  
}