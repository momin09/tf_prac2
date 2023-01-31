resource "aws_route_table" "sample-rt-public" {
    tags = {
      Name = "sample-rt-public"
    }

    vpc_id = aws_vpc.sample-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.sample-igw.id
    }
}

resource "aws_route_table" "sample-rt-private01" {
    tags = {
        Name = "sample-rt-private01"
    }

    vpc_id = aws_vpc.sample-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.sample-ngw01.id
    }
}

resource "aws_route_table" "sample-rt-private02" {
    tags = {
        Name = "sample-rt-private02"
    }

    vpc_id = aws_vpc.sample-vpc.id


    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.sample-ngw02.id
    }
}