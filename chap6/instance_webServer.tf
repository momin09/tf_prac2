resource "aws_instance" "sample-ec2-web01" {
    tags = {
        Name = "sample-ec2-web01"
    }

    ami = "ami-013218fccb68a90d4"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private01.id

    key_name = aws_key_pair.example-yeah-pair.key_name
}

resource "aws_instance" "sample-ec2-web02" {
    tags = {
        Name = "sample-ec2-web02"
    }

    ami = "ami-013218fccb68a90d4"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private02.id

    associate_public_ip_address = true
    key_name = aws_key_pair.example-yeah-pair.key_name
}
