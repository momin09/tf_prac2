resource "aws_vpc" "sample-vpc" {
    tags = {
        Name = "sample-vpc"
    }

    cidr_block = "10.0.0.0/16"
}