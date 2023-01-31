resource "aws_route_table_association" "connect-public01" {
    route_table_id = aws_route_table.sample-rt-public.id
    subnet_id = aws_subnet.public01.id
}

resource "aws_route_table_association" "connect-public02" {
    route_table_id = aws_route_table.sample-rt-public.id
    subnet_id = aws_subnet.public02.id
}

resource "aws_route_table_association" "connect-private01" {
    route_table_id = aws_route_table.sample-rt-private01.id
    subnet_id = aws_subnet.private01.id
}

resource "aws_route_table_association" "connect-private02" {
    route_table_id = aws_route_table.sample-rt-private02.id
    subnet_id = aws_subnet.private02.id
}