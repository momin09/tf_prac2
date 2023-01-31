resource "aws_security_group" "sample-sg-bastion" {
    tags = {
        Name = "sample-sg-bastion"
        Description = "for bastion server"
    }
    vpc_id = aws_vpc.sample-vpc.id

    ingress {
        description = "SSH"
        protocol = "TCP"
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }   
}

resource "aws_security_group" "sample-sg-elb" {
    tags = {
        Name = "sample-sg-elb"
        Description = "for load balancer"
    }
    vpc_id = aws_vpc.sample-vpc.id

    ingress {
        description = "HTTP"
        protocol = "TCP"
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTPS"
        protocol = "TCP"
        from_port = 443
        to_port = 443
        cidr_blocks = ["0.0.0.0/0"]
    }
}