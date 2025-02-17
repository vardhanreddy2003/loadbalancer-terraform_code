resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.aws-practice-vpc.id
    tags={
        Name="pub-rt"
    }
  
}

resource "aws_route" "pub-rt" {
    route_table_id = aws_route_table.public-rt.id
    gateway_id = aws_internet_gateway.practice-vpc-igw.id
    destination_cidr_block = "0.0.0.0/0"
  
}
resource "aws_route_table_association" "public-association-1" {
    route_table_id = aws_route_table.public-rt.id
    subnet_id = aws_subnet.public-subnet-1.id
    
}
resource "aws_route_table_association" "public-association-2" {
    route_table_id=aws_route_table.public-rt.id
    subnet_id=aws_subnet.public-subnet-2.id
  
}