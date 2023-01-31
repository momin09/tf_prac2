resource "aws_internet_gateway" "sample-igw" {
    tags = {
        Name = "sample-igw"
    }
    vpc_id = aws_vpc.sample-vpc.id
}