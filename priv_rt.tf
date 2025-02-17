resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.aws-practice-vpc.id
    tags={
        Name="private-rt"
    }
  
}
resource "aws_route" "priv_rt" {
    route_table_id = aws_route_table.private-rt.id
    gateway_id = aws_nat_gateway.practice-vpc-natgw.id
    destination_cidr_block = "0.0.0.0/0"

  
}
resource "aws_route_table_association" "priv_association-1" {
    route_table_id = aws_route_table.private-rt.id
    subnet_id = aws_subnet.private-subnet-1.id
  
}
resource "aws_route_table_association" "priv_association-2" {
    route_table_id = aws_route_table.private-rt.id
    subnet_id = aws_subnet.private-subnet-2.id
}