resource "aws_internet_gateway" "practice-vpc-igw" {
    vpc_id = aws_vpc.aws-practice-vpc.id
  
}