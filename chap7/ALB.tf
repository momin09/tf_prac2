resource "aws_lb" "sample-elb" {
  name = "sample-elb"
  load_balancer_type = "application"

  subnets = [aws_subnet.public01.id, aws_subnet.public02.id]
  security_groups = [aws_security_group.sample-sg-elb.id, "sg-046637419916b539d"]
}

resource "aws_lb_listener" "sample-elb-listener" {
  load_balancer_arn = aws_lb.sample-elb.arn
  port = "80"
  protocol = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.sample-tg.arn
  }
}