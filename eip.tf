resource "aws_eip" "nat_eip" {
  domain ="vpc"

  tags = {
    Name = "nat_gw_eip"
  }
}
