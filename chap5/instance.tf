resource "aws_instance" "sample-bastion" {
    tags = {
        Name = "sample-bastion"
    }
    ami = "ami-013218fccb68a90d4"
    instance_type = "t2.micro"

    vpc_security_group_ids = [aws_security_group.sample-sg-bastion.id]
    subnet_id = aws_subnet.public01.id

    associate_public_ip_address = true
    key_name = aws_key_pair.exampleMomin-instance-key-pair.key_name
}