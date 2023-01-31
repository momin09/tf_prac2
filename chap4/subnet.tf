resource "aws_subnet" "public01" {
    tags = {
        Name = "public01"
    }
    vpc_id = aws_vpc.sample-vpc.id
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.0.0/20"
}

resource "aws_subnet" "public02" {
    tags = {
        Name = "public02"
    }
    vpc_id = aws_vpc.sample-vpc.id
    availability_zone = "ap-northeast-2c"
    cidr_block = "10.0.16.0/20"
}

resource "aws_subnet" "private01" {
    tags = {
        Name = "private01"
    }
    vpc_id = aws_vpc.sample-vpc.id
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.64.0/20"
}

resource "aws_subnet" "private02" {
    tags = {
        Name = "private02"
    }
    vpc_id = aws_vpc.sample-vpc.id
    availability_zone = "ap-northeast-2c"
    cidr_block = "10.0.80.0/20"
}