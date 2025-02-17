resource "aws_nat_gateway" "practice-vpc-natgw" {
  
  allocation_id = aws_eip.nat_eip.id
  subnet_id=aws_subnet.public-subnet-1.id 
 tags={
    Name="practice-vpc-natgw"
 } 
 depends_on = [aws_eip.nat_eip] 
}