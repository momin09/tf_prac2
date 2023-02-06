resource "aws_lb_target_group" "sample-tg" {
  name = "sample-tg"
  vpc_id = aws_vpc.sample-vpc.id
  port = 3000
  protocol = "HTTP"
}

resource "aws_lb_target_group_attachment" "sample-tg-attachment-web1" {
  target_group_arn = aws_lb_target_group.sample-tg.arn
  target_id = aws_instance.sample-ec2-web01.id
  port = 3000
}

resource "aws_lb_target_group_attachment" "sample-tg-attachment-web2" {
  target_group_arn = aws_lb_target_group.sample-tg.arn
  target_id = aws_instance.sample-ec2-web02.id
  port = 3000
}