// You have to get an EIP to nat_gateway
// So check the eip.tf

resource "aws_nat_gateway" "sample-ngw01" {
    tags = {
        Name = "sample-ngw01"
    }
    // EIP assign
    allocation_id = aws_eip.sample-nat-eip01.id
    subnet_id = aws_subnet.public01.id

    depends_on = [
      aws_internet_gateway.sample-igw
    ]
}

resource "aws_nat_gateway" "sample-ngw02" {
    tags = {
        Name = "smaple-ngw02"
    }

    allocation_id = aws_eip.sample-nat-eip02.id
    subnet_id = aws_subnet.public02.id

    depends_on = [
      aws_internet_gateway.sample-igw
    ]
}