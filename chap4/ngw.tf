resource "aws_nat_gateway" "sample-ngw01" {
    tags = {
        Name = "sample-ngw01"
    }
    // EIP auto assign
    subnet_id = aws_subnet.public01.id

    depends_on = [
      aws_internet_gateway.sample-igw
    ]
}

resource "aws_nat_gateway" "sample-ngw02" {
    tags = {
        Name = "smaple-ngw02"
    }

    subnet_id = aws_subnet.public02.id

    depends_on = [
      aws_internet_gateway.sample-igw
    ]
}