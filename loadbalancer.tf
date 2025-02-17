resource "aws_lb" "practice-vpc-lb" {
  name               = "practice-vpc-lf"
  internal           = false
  load_balancer_type="application"
  subnets=[aws_subnet.private-subnet-1.id,aws_subnet.private-subnet-2.id]
  security_groups = [aws_security_group.web_sg.id]


}

  

