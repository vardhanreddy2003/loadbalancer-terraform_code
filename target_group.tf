resource "aws_lb_target_group" "target_lb" {

    name="ALB-TG"
    port=80
    protocol="HTTP"
    vpc_id = aws_vpc.aws-practice-vpc.id
    health_check {
       path     = "/health"
    port     = 80
    protocol = "HTTP"
    }
  
}