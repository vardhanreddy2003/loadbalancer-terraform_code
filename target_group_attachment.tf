resource "aws_lb_target_group_attachment" "webserver1-attachment" {
    target_group_arn =aws_lb_target_group.target_lb.arn
    target_id =aws_instance.webserver1.id
    port=80

    depends_on = [ 
        aws_lb_target_group.target_lb,
        aws_instance.webserver1
     ]
  
}
resource "aws_lb_target_group_attachment" "webserver2-attachment" {
    target_group_arn = aws_lb_target_group.target_lb.arn
    target_id = aws_instance.webserver2.id
    port=80

    depends_on = [ 
        aws_lb_target_group.target_lb,
        aws_instance.webserver2
     ]
  
}

resource "aws_lb_listener" "listener_lb" {
    load_balancer_arn = aws_lb.practice-vpc-lb.arn
    port=80
    protocol = "HTTP"
    default_action {
      type="forward"
      target_group_arn = aws_lb_target_group.target_lb.arn
    }
  
}